package com.project.hrproject.dao;

import java.util.List;

import com.project.hrproject.entity.ImageModel;

public interface DocumentDao {

	public int saveDocument(ImageModel imageModel, int i);

	public List<ImageModel> findByUserid(String userid);

}
