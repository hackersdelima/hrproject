package com.project.hrproject;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.project.hrproject.dao.RegistrationDao;
import com.project.hrproject.entity.RegistrationModel;
import com.project.hrproject.entity.RegistrationNextModel;
import com.project.hrproject.entity.UserModel;

@Controller
@RequestMapping("reg")
@SessionAttributes({ "registration", "registrationnext" })
public class RegistrationController {
	@Autowired
	RegistrationDao registrationDao;
	
	@RequestMapping(value = "/next", method = RequestMethod.POST)
	public String next(@ModelAttribute RegistrationModel registrationModel, Model model) {
		model.addAttribute("registration", registrationModel);
		return "registration/registration_form1";
	}

	@RequestMapping(value = "/firstForm", method = RequestMethod.POST)
	public String previous(@ModelAttribute RegistrationNextModel registrationNextModel, Model model) {
		System.out.println(registrationNextModel.getRoll_no());
		model.addAttribute("registrationnext", registrationNextModel);
		return "redirect:/nav/registration_form";
	}

	@RequestMapping(value = "/secondForm")
	public String previous() {
		return "registration/registration_form1";
	}

	@RequestMapping(value = "/thirdForm", method = RequestMethod.POST)
	public String photoupload(@ModelAttribute RegistrationNextModel registrationNextModel, Model model) {
		System.out.println(registrationNextModel.getRoll_no());
		model.addAttribute("registrationnext", registrationNextModel);
		return "registration/picupload";
	}

	@RequestMapping(value = "/save")
	@ResponseBody
	public String save(@RequestParam("file") MultipartFile file, Model model, HttpSession session) throws IOException {
		//operations
		RegistrationModel rm = (RegistrationModel)session.getAttribute("registration");
		RegistrationNextModel rnm = (RegistrationNextModel)session.getAttribute("registrationnext");
		
		UserModel userdetail=(UserModel)session.getAttribute("userDetail");
		// Save file on system
		String saveFileName=null;
		String fileLocation=null; 
		if (!file.getOriginalFilename().isEmpty()) {
			saveFileName=userdetail.getUsername()+".png";
			
			//File upload location from database
			fileLocation=registrationDao.imageUploadLocation(); //can be taken from database
			
			//create folder if not exists
			File uploadDir = new File(fileLocation);
			if (!uploadDir.exists()) {
				uploadDir.mkdir();
			}
			//upload file
			BufferedOutputStream outputStream = new BufferedOutputStream(
					new FileOutputStream(new File(fileLocation, saveFileName)));
			outputStream.write(file.getBytes());
			outputStream.flush();
			outputStream.close();

			return "file uploaded";
		} else {
			return "please select file";
		}

	}

	@RequestMapping(value = "/cancel")
	@ResponseBody
	public String cancel(SessionStatus status) {
		status.setComplete();
		return "Registration Canceled!";
	}

}
