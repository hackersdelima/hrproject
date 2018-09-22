package com.project.hrproject.service;

import java.util.List;

import com.project.hrproject.entity.ImageModel;

public interface DocumentService {

	public int saveDocument(ImageModel imageModel, int i);

	public List<ImageModel> findByUserid(String userid);

}
