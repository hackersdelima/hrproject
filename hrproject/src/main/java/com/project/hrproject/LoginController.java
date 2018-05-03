package com.project.hrproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.hrproject.dao.LoginDao;
import com.project.hrproject.entity.UserModel;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String login(Model model){
		model.addAttribute("user", new UserModel());
		System.out.println("login invoked");
		return "";
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
