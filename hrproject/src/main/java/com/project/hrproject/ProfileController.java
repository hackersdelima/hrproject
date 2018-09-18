package com.project.hrproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.hrproject.dao.UserDao;
import com.project.hrproject.entity.UserModel;

@Controller
@RequestMapping(value="/profile")
public class ProfileController {
	
	@Autowired
	UserDao userDao;
	
	
	@RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
	public String update(@PathVariable("id") String userid, @ModelAttribute UserModel user, Model model) {
		int status = userDao.update(user, userid);
		if(status>0) {
			model.addAttribute("msg", "Update Successful!");
		}
		else {
			model.addAttribute("msg", "Update Failure!");
		}
		return "dashboard";
	}

}
