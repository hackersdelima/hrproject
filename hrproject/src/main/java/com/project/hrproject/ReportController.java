package com.project.hrproject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.project.hrproject.entity.EducationModel;
import com.project.hrproject.entity.ImageModel;
import com.project.hrproject.entity.UserModel;
import com.project.hrproject.service.ReportService;

@RestController
@RequestMapping("/report")
public class ReportController {
	@Autowired
	ReportService reportService;
	
	@ResponseBody
	@RequestMapping(value="/registeredImages")
	public ArrayList<ImageModel> getRegisteredImages(HttpSession session){
		UserModel userDetail = (UserModel)session.getAttribute("userDetail");
		String username=userDetail.getUsername();
		System.out.println(username);
		ArrayList<ImageModel> imagesDetail = reportService.findAllImages(username);
		return imagesDetail;
	}
	
	@RequestMapping(value = "/findByIdEducation/{id}", method = RequestMethod.GET)
	public Map<String, Object> findByIdEducation(@PathVariable("id") String userid, HttpSession session){
		Map<String, Object> map = new HashMap<String, Object>();
		List<EducationModel> list = reportService.findByIdEducation(userid);
		map.put("data", list);
		return map;
	}
	
	
	
	

}
