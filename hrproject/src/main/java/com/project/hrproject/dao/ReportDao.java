package com.project.hrproject.dao;

import java.util.ArrayList;
import java.util.List;

import com.project.hrproject.entity.EducationModel;
import com.project.hrproject.entity.ImageModel;

public interface ReportDao {
	public ArrayList<ImageModel> findAllImages(String username);

	public List<EducationModel> findByIdEducation(String userid);
	
}
