package com.project.hrproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.hrproject.dao.UserDao;
import com.project.hrproject.entity.UserModel;

@Controller
@SessionAttributes("user")
public class HomeController {
	
	@Autowired
	UserDao userDao;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(ModelMap model, @ModelAttribute("msg") String msg) {
		model.put("user", new UserModel());
		model.addAttribute("msg", msg);
		return "index";
	}

	
	@RequestMapping(value = "/signup_review", method = RequestMethod.POST)
	public String signup_review(ModelMap model, @ModelAttribute UserModel user){
		model.addAttribute("user",user);
		return "signup_review";
	}
	@RequestMapping(value = "/signup")
	public String signup(@ModelAttribute(value = "user") UserModel user, RedirectAttributes attributes, SessionStatus sessionStatus) {
		System.out.println(user);
		String msg = "";
		int status = userDao.signup(user);
		if(status==0){
			msg ="Signup Failed! Please Signup again.";
		}
		msg = "Signup Successful! Please Login to Continue.";
		attributes.addFlashAttribute("msg",msg);
		sessionStatus.isComplete();
		return "redirect:/";
	}
}
