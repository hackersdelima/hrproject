package com.project.hrproject;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.hrproject.entity.ImageModel;
import com.project.hrproject.entity.UserModel;
import com.project.hrproject.service.ReportService;

@Controller
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

}
