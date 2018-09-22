package com.project.hrproject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.project.hrproject.entity.UserModel;
import com.project.hrproject.service.AdminService;

@RequestMapping("/admin")
@RestController
public class AdminController {
	@Autowired
	AdminService adminService;
	
	@RequestMapping(value = "/applicants", method=RequestMethod.GET)
	public Map<String, Object> applicants(){
		Map<String, Object> map = new HashMap<String, Object>();
		List<UserModel> list = adminService.findAllApplicants();
		map.put("data", list);
		
		return map;
	}
	
	@RequestMapping(value = "/applicants/{id}", method=RequestMethod.GET)
	public Map<String, Object> findApplicantById(@PathVariable("id") String userid){
		Map<String, Object> map = new HashMap<String, Object>();
		List<UserModel> list = new ArrayList<UserModel>();
		UserModel applicant = adminService.findApplicantById(userid);
		list.add(applicant);
		map.put("data", list);
		return map;
	}
	
}
