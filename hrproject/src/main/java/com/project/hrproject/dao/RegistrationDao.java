package com.project.hrproject.dao;

import java.util.List;

import com.project.hrproject.entity.ApplicantsModel;
import com.project.hrproject.entity.Districtcodes;
import com.project.hrproject.entity.RegistrationModel;
import com.project.hrproject.entity.RegistrationNextModel;
import com.project.hrproject.entity.VacancyModel;

public interface RegistrationDao {
	 public int register(RegistrationModel rm, RegistrationNextModel rnm);
	 public String imageUploadLocation();
	 public VacancyModel getSpecificAdvertisements(String advertiseno);
	 public List<VacancyModel> getAdvertisements();
	 public VacancyModel getAdvertisementsById(String id);
	 
	 public int documentUploadSave(String document_type, String username, String filename);
	public int verificationStatus(String userid);
	public List<Districtcodes> getDistricts();
	
	//applicants signup first phase
	public int register(ApplicantsModel am);
}
