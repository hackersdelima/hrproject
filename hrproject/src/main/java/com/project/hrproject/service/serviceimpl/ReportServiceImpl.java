package com.project.hrproject.service.serviceimpl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.hrproject.dao.ReportDao;
import com.project.hrproject.entity.ImageModel;
import com.project.hrproject.service.ReportService;

@Service
public class ReportServiceImpl implements ReportService {
	
	@Autowired
	ReportDao reportDao;

	@Override
	public ArrayList<ImageModel> findAllImages(String username) {
		return reportDao.findAllImages(username);
	}

}
