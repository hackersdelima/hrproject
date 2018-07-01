package com.project.hrproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.hrproject.dao.LoginDao;
import com.project.hrproject.dao.RegistrationDao;
import com.project.hrproject.entity.UserModel;

@Controller
@RequestMapping("/login")
@SessionAttributes({"userDetail","vacancy"})
public class LoginController {
	@Autowired
	private LoginDao loginDao;
	@Autowired
	private RegistrationDao registrationDao;
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String login(@ModelAttribute(value = "user") UserModel user, Model model, RedirectAttributes attributes){
		System.out.println(user);
		System.out.println("login invoked");
		boolean status = loginDao.verifyUser(user);
		if (status) {
			UserModel userDetail = getUser(user);
			model.addAttribute("userDetail", userDetail);
			System.out.println(registrationDao.getSpecificAdvertisements(userDetail.getAdvertiseno()));
			model.addAttribute("vacancy", registrationDao.getSpecificAdvertisements(userDetail.getAdvertiseno()));
			return "profile";
		} else {
			attributes.addFlashAttribute("msg","Invalid Login Credentials!");
			return "redirect:/";
		}
	}
	public UserModel getUser(UserModel user) {
		return loginDao.getUserDetails(user);
	}
	/*@Autowired
	private LoginDao loginDao;*/
	
	/*@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Model model){
		System.out.println("login invoked");
		model.addAttribute("user", new UserModel());
		boolean status = loginDao.verifyUser(user);
		if (status) {
			UserModel userDetail = getUser(user);
			model.addAttribute("userDetail", userDetail);
			return "profile";
		} else {
			return "index";
		}
		
		return "";
		
		
	}
	public UserModel getUser(UserModel user) {
		return loginDao.getUserDetails(user);
	}*/
	

}
