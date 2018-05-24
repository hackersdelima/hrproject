package com.project.hrproject.dao;

import java.util.List;

import com.project.hrproject.entity.VacancyModel;
import com.project.hrproject.entity.RegistrationModel;
import com.project.hrproject.entity.RegistrationNextModel;

public interface RegistrationDao {
	 public int register(RegistrationModel rm, RegistrationNextModel rnm);
	 public String imageUploadLocation();
	 public VacancyModel getSpecificAdvertisements(String advertiseno);
	 public List<VacancyModel> getAdvertisements();
}
