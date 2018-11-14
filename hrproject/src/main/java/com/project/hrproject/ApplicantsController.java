package com.project.hrproject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.hrproject.dao.RegistrationDao;
import com.project.hrproject.entity.ApplicantsModel;
import com.project.hrproject.entity.UserModel;
import com.project.hrproject.entity.VacancyModel;
import com.project.hrproject.utils.CharacterGenerator;

@Controller
@RequestMapping("/applicants")
public class ApplicantsController {
	
	@Autowired
	RegistrationDao registrationDao;
	
	CharacterGenerator cg = new CharacterGenerator();
	
	@RequestMapping(value="signup/{id}", method=RequestMethod.GET)
	public String applicantsSignup(@PathVariable String id, Model model) {
		VacancyModel vm = registrationDao.getAdvertisementsById(id);
		model.addAttribute("vacancy", vm);
		return "applicants/signup";
	}
	
	@RequestMapping(value="vacancies", method=RequestMethod.GET)
	public String vacancies(Model model) {
		List<VacancyModel> list = registrationDao.getAdvertisements();
		model.addAttribute("list", list);
		
		return "applicants/vacancies";
	}
	
	@RequestMapping(value="register", method=RequestMethod.POST)
	public String register(@ModelAttribute ApplicantsModel applicantsModel, RedirectAttributes attributes) {
		String username = cg.randomString(10);
		String password = cg.randomString(8);
		String usernamepwd="";
		
		applicantsModel.setPassword(username);
		applicantsModel.setUsername(password);
		
		int signupStatus = registrationDao.register(applicantsModel);
		
		if(signupStatus>0) {
			System.out.println("signup successful");
			usernamepwd = "Username: "+applicantsModel.getUsername()+" Password: "+applicantsModel.getPassword();
			
			attributes.addAttribute("msg", "Signup Successful. Please Login! Keep username and password safe.");
			attributes.addAttribute("up", usernamepwd);
			return "redirect:/";
		}
		else {
			System.out.println("signup failed");
			attributes.addAttribute("msg", "Signup Failed. Please Try Again!");
			return "redirect:/";
		}
		
	}
	
	@RequestMapping(value="update", method=RequestMethod.GET)
	public String update(@ModelAttribute UserModel userModel, Model model) {
		String msg;
		System.out.println(userModel);
		int updateStatus = registrationDao.updateuser(userModel);
		
		if(updateStatus>0) {
			msg="Update Successful!";
		}
		else {
			msg = "Update Failed!";
		}
		model.addAttribute("msg", msg);
		return "nav/registration_form";
	}
	

}
