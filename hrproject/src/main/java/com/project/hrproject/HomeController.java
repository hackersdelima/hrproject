package com.project.hrproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.hrproject.dao.UserDao;
import com.project.hrproject.entity.UserModel;

@Controller
public class HomeController {
	
	@Autowired
	UserDao userDao;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(ModelMap model, @ModelAttribute("msg") String msg) {
		model.put("user", new UserModel());
		model.addAttribute("msg", msg);
		return "index";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signup(@ModelAttribute(value = "user") UserModel user, RedirectAttributes attributes) {
		System.out.println(user);
		String msg = "";
		int status = userDao.signup(user);
		if(status==0){
			msg ="Signup Failed! Please Signup again.";
		}
		msg = "Signup Successful! Please Login to Continue.";
		attributes.addFlashAttribute("msg",msg);
		return "redirect:/";
	}
}
