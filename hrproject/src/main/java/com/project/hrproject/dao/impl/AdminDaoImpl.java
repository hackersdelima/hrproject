package com.project.hrproject.dao.impl;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import com.project.hrproject.dao.AdminDao;
import com.project.hrproject.entity.UserModel;

@Repository
public class AdminDaoImpl implements AdminDao{
	private NamedParameterJdbcTemplate namedParamterJdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource){
		this.namedParamterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public List<UserModel> findAllApplicants() {
		String query = "select * from usertbl";
		return namedParamterJdbcTemplate.query(query, new BeanPropertyRowMapper<UserModel>(UserModel.class));
	}

	@Override
	public UserModel findApplicantById(String userid) {
		String query = "select * from usertbl where userid = :userid";
		MapSqlParameterSource map = new MapSqlParameterSource();
		map.addValue("userid", userid);
		return namedParamterJdbcTemplate.queryForObject(query, map, new BeanPropertyRowMapper<UserModel>(UserModel.class));
	}

	@Override
	public int applicantactivate(String userid) {
		String query = "update usertbl set status=1 where userid= :userid";
		MapSqlParameterSource map = new MapSqlParameterSource();
		map.addValue("userid", userid);
		return namedParamterJdbcTemplate.update(query, map);
	}

	@Override
	public int applicantdeactivate(String userid) {
		String query = "update usertbl set status=0 where userid= :userid";
		MapSqlParameterSource map = new MapSqlParameterSource();
		map.addValue("userid", userid);
		return namedParamterJdbcTemplate.update(query, map);
	}

}
