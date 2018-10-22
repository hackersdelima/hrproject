package com.project.hrproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.hrproject.service.AdminService;

@Controller
@RequestMapping("/verification")
public class VerificationController {
	@Autowired
	AdminService adminService;
	
	@RequestMapping(value = "/applicantactivate/{id}", method = RequestMethod.GET)
	public String applicantactivate(@PathVariable("id") String userid, RedirectAttributes attributes) {
		int status = adminService.applicantactivate(userid);
		if(status>0) {
			attributes.addFlashAttribute("msg", "Applicant Activated!");
		}
		else {
			attributes.addFlashAttribute("msg", "Applicant Activate Failed!");
		}
		return "redirect:/nav/applicantdetail/"+userid+"";
		
	}
	
	@RequestMapping(value = "/applicantdeactivate/{id}", method = RequestMethod.GET)
	public String applicantdeactivate(@PathVariable("id") String userid, RedirectAttributes attributes) {
		int status = adminService.applicantdeactivate(userid);
		if(status>0) {
			attributes.addFlashAttribute("msg", "Applicant Deactivated!");
		}
		else {
			attributes.addFlashAttribute("msg", "Applicant Deactivate Failed!");
		}
		return "redirect:/nav/applicantdetail/"+userid+"";
		
	}

}
