package com.project.hrproject;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.hrproject.dao.LoginDao;
import com.project.hrproject.dao.RegistrationDao;
import com.project.hrproject.entity.UserModel;

@Controller
@RequestMapping("/nav")
public class NavigationController {
	@Autowired
	RegistrationDao registrationDao;
	
	@Autowired
	LoginDao loginDao;
	
	
	@RequestMapping(value = "/registration_form")
	public String registration_form(Model model){
		System.out.println("registrationform invoked");
		
		
		return "registration/registration_form";
	}
	@RequestMapping(value = "/documents_upload")
	public String documents_upload(Model model){
		return "registration/picupload";
	}
	
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup(ModelMap model, @ModelAttribute("msg") String msg) {
		model.put("ad_nos", registrationDao.getAdvertisements());
		model.put("user", new UserModel());
		return "signup";
	}
	
	@RequestMapping(value = "/entrance_card", method = RequestMethod.GET)
	public String entranceCard() {
		
		return "reports/admit_card";
	}
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(HttpSession session, Model model) {
		model.addAttribute("user",session.getAttribute("userDetail"));
		
		return "profile/edit";
	}
	

}
