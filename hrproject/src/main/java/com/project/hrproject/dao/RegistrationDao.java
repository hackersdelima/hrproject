package com.project.hrproject.dao;

import com.project.hrproject.entity.RegistrationModel;
import com.project.hrproject.entity.RegistrationNextModel;

public interface RegistrationDao {
	 public int register(RegistrationModel rm, RegistrationNextModel rnm);
	 public String imageUploadLocation();
}
