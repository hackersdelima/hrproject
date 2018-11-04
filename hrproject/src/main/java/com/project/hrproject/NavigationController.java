package com.project.hrproject;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

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
		model.put("districts", registrationDao.getDistricts());
		model.put("ad_nos", registrationDao.getAdvertisements());
		model.put("user", new UserModel());
		return "signup";
	}
	
	@RequestMapping(value = "/entrance_card", method = RequestMethod.GET)
	public String entranceCard(Model model, HttpSession session) {
		UserModel user =(UserModel) session.getAttribute("userDetail");
		String userid = user.getUserid();
		int status = registrationDao.verificationStatus(userid);
		
		if(status==1) {
			return "reports/admit_card";
		}
		else {
			model.addAttribute("msg", "You are not yet verified! ");
			return "registration/verificationStatus";
		}
	}
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(HttpSession session, Model model) {
		model.addAttribute("user",session.getAttribute("userDetail"));
		
		return "profile/edit";
	}
	
	@RequestMapping(value = "/applicants", method = RequestMethod.GET)
	public String applicants() {
		return "admin/applicants";
	}
	
	@RequestMapping(value = "/applicantdetail/{id}", method = RequestMethod.GET)
	public String applicantdetail(@PathVariable("id") String userid, Model model, @ModelAttribute("msg") String msg) {
		model.addAttribute("userid", userid);		
		if(msg!=null) {
			model.addAttribute("msg",msg);
		}
		return "admin/applicantdetail";
	}
	
	@RequestMapping(value = "/reginfo", method = RequestMethod.GET)
	public String reginfo() {
		return "admin/registration_form";
	}
	
	
	@RequestMapping(value = "/verificationStatus", method = RequestMethod.GET)
	public String verificationStatus(Model model, HttpSession session) {
		UserModel user =(UserModel) session.getAttribute("userDetail");
		String userid = user.getUserid();
		int status = registrationDao.verificationStatus(userid);
		
		if(status==1) {
			model.addAttribute("msg", "Your Registration is verified!");
		}
		else {
			model.addAttribute("msg", "Verification is pending!");
		}
		return "registration/verificationStatus";
	}
	

}
