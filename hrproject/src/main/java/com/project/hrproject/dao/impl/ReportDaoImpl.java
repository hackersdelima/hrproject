package com.project.hrproject.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.project.hrproject.dao.ReportDao;
import com.project.hrproject.entity.EducationModel;
import com.project.hrproject.entity.ImageModel;

@Repository
public class ReportDaoImpl implements ReportDao {
private NamedParameterJdbcTemplate template;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.template = new NamedParameterJdbcTemplate(dataSource);
	}

	public ArrayList<ImageModel> findAllImages(String username) {
		String query = "select * from tblimages where username='"+username+"'";
		return (ArrayList<ImageModel>) template.query(query, new BeanPropertyRowMapper<ImageModel>(ImageModel.class));
	}

	@Override
	public List<EducationModel> findByIdEducation(String userid) {
		String query = "select * from educationdetail where userid='"+userid+"'";
		return template.query(query, new BeanPropertyRowMapper<EducationModel>(EducationModel.class));
	}
	
	

}
