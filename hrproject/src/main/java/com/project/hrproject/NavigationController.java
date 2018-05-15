package com.project.hrproject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.hrproject.entity.UserModel;

@Controller
@RequestMapping("/nav")
public class NavigationController {
	
	@RequestMapping(value = "/registration_form")
	public String registration_form(Model model){
		System.out.println("registrationform invoked");
		return "registration/registration_form";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup(ModelMap model, @ModelAttribute("msg") String msg) {
		model.put("user", new UserModel());
		return "signup";
	}
	
	@RequestMapping(value = "/entrance_card", method = RequestMethod.GET)
	public String entranceCard() {
		
		return "reports/admit_card";
	}

}
