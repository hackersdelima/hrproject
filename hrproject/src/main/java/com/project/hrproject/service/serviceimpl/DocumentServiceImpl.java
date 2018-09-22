package com.project.hrproject.service.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.hrproject.dao.DocumentDao;
import com.project.hrproject.entity.ImageModel;
import com.project.hrproject.service.DocumentService;

@Service
public class DocumentServiceImpl implements DocumentService {
	@Autowired
	DocumentDao documentDao;

	@Override
	public int saveDocument(ImageModel imageModel, int i) {
		return documentDao.saveDocument( imageModel, i);
	}

	@Override
	public List<ImageModel> findByUserid(String userid) {
		return documentDao.findByUserid(userid);
	}

}
