package com.project.hrproject.dao.impl;

import java.io.ByteArrayInputStream;
import java.sql.Types;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.support.SqlLobValue;
import org.springframework.jdbc.support.lob.DefaultLobHandler;
import org.springframework.stereotype.Repository;

import com.project.hrproject.dao.DocumentDao;
import com.project.hrproject.entity.ImageModel;

@Repository
public class DocumentDaoImpl implements DocumentDao{
	
	private NamedParameterJdbcTemplate template;
	@Autowired
	public void setDataSource(DataSource dataSource){
		this.template = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public int saveDocument(ImageModel imageModel, int i) {
		String query = "insert into tblimages (imagetype, description, image) values (:imagetype, :description, :image)";
		
		MapSqlParameterSource map = new MapSqlParameterSource();
		map.addValue("imagetype", imageModel.getImagetype()[i]);
		map.addValue("description", imageModel.getDescription()[i]);
		map.addValue("image", new SqlLobValue(new ByteArrayInputStream(imageModel.getImage()), imageModel.getImage().length, new DefaultLobHandler()), Types.BLOB);
		
		return template.update(query, map);
	}

}
