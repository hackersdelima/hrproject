package com.project.hrproject.service;

import java.util.ArrayList;
import java.util.List;

import com.project.hrproject.entity.EducationModel;
import com.project.hrproject.entity.ImageModel;

public interface ReportService {
	public ArrayList<ImageModel> findAllImages(String username);

	public List<EducationModel> findByIdEducation(String userid);

}
