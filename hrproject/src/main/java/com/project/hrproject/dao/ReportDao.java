package com.project.hrproject.dao;

import java.util.ArrayList;

import com.project.hrproject.entity.ImageModel;

public interface ReportDao {
	public ArrayList<ImageModel> findAllImages(String username);
	
}
