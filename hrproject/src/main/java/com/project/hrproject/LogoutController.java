package com.project.hrproject;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/logout")
public class LogoutController {
	
	@RequestMapping(value="/")
	public String logout(HttpSession session, RedirectAttributes attributes){
		session.invalidate();
		attributes.addAttribute("msg","Logout Successful!");
		return "redirect:/";
	}
	
	@RequestMapping(value="/admin")
	public String admin(HttpSession session, RedirectAttributes attributes){
		session.invalidate();
		attributes.addAttribute("msg","Logout Successful!");
		return "redirect:/admin";
	}

}
