package com.project.hrproject.service;

import java.util.ArrayList;

import com.project.hrproject.entity.ImageModel;

public interface ReportService {
	public ArrayList<ImageModel> findAllImages(String username);

}
