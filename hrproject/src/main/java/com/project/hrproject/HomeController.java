package com.project.hrproject;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.hrproject.dao.UserDao;
import com.project.hrproject.entity.EducationModel;
import com.project.hrproject.entity.ImageModel;
import com.project.hrproject.entity.UserModel;
import com.project.hrproject.service.DocumentService;

@Controller
@SessionAttributes("user")
public class HomeController {
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	DocumentService documentService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(ModelMap model, @ModelAttribute("msg") String msg) {
		model.put("user", new UserModel());
		model.addAttribute("msg", msg);
		return "index";
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(ModelMap model, @ModelAttribute("msg") String msg) {
		model.put("user", new UserModel());
		model.addAttribute("msg", msg);
		return "adminindex";
	}

	
	/*@RequestMapping(value = "/signup_review", method = RequestMethod.POST)
	public String signup_review(ModelMap model, @ModelAttribute UserModel user){
		System.out.println(user);
		model.addAttribute("user",user);
		return "signup_review";
	}*/
	
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signup(@RequestParam("file") MultipartFile[] file,
			@ModelAttribute ImageModel imageModel, @ModelAttribute UserModel user,@ModelAttribute EducationModel educationModel, HttpServletResponse response, RedirectAttributes attributes) {
		Map<String, Object> map = new HashMap<String, Object>();
		int status = userDao.signup(user);
		String signup = "";
		String upload = "";
		
		if(status>0) {
			int educationSize = educationModel.getExam_name().length;
			String userid = userDao.findMaxUserId();
			educationModel.setUserid(userid);
			for(int i=0;i<educationSize;i++) {
			userDao.saveEducation(educationModel, i);
			}
			map.put("signup status", HttpStatus.OK);
			signup = "Signup Successful! ";
		//blob conversion
				if (file != null && file.length > 0) {
					for (int i = 0; i < file.length; i++) {
						try {
							InputStream is = file[i].getInputStream();
							byte[] targetArray = IOUtils.toByteArray(is);
							imageModel.setImage(targetArray);
							System.out.println(targetArray);

							int save_status = 0;
							// save_status = save query here
							imageModel.setUserid(userid);
							save_status = documentService.saveDocument(imageModel, i);
							if (save_status > 0) {
								map.put("upload status", HttpStatus.OK);
							} else {
								map.put("upload status", HttpStatus.NOT_ACCEPTABLE);
							}

						} catch (Exception e) {
							System.out.println(e);
							map.put("upload status", HttpStatus.INTERNAL_SERVER_ERROR);
						}
					}
					upload = "Upload Successful!";
				}
				else {
					map.put("upload status", "no files found!");
					upload = "Upload Failed!";
				}
		}
		else {
			signup = "Signup Failed!";
		}
		System.out.println(map);
		attributes.addAttribute("msg", signup+upload);
				return "redirect:/";
	}
	
	/*@RequestMapping(value = "/signup")
	public String signup(@ModelAttribute(value = "user") UserModel user, RedirectAttributes attributes, SessionStatus sessionStatus) {
		System.out.println(user);
		String msg = "";
		int status = userDao.signup(user);
		
		if(status>0){
			msg = "Signup Successful! Please Login to Continue.";
		}
		else {
			msg ="Signup Failed! Please Signup again.";
		}
		attributes.addFlashAttribute("msg",msg);
		sessionStatus.isComplete();
		
		return "redirect:/";
	}*/
}
