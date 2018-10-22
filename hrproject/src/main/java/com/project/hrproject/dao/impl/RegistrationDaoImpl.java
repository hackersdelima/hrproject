package com.project.hrproject.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.project.hrproject.dao.RegistrationDao;
import com.project.hrproject.entity.VacancyModel;
import com.project.hrproject.entity.RegistrationModel;
import com.project.hrproject.entity.RegistrationNextModel;
import com.project.hrproject.entity.UserModel;

public class RegistrationDaoImpl implements RegistrationDao {
private JdbcTemplate jdbcTemplate;
	

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	 
	 @Autowired
	 private void setDataSource(DataSource dataSource)
	 {
		 this.jdbcTemplate=new JdbcTemplate(dataSource);
		 
	 }
	 
	 public int register(RegistrationModel rm, RegistrationNextModel rnm){
		 String query = "";
		return jdbcTemplate.update(query);
	 }
	 public String imageUploadLocation(){
		 String query="select description from general_settings where name='image_upload_location'";
		 return jdbcTemplate.queryForObject(query, String.class);
	 }
	 
	 public List<VacancyModel> getAdvertisements(){
		 String sql="select * from vacancytbl";
		 return jdbcTemplate.query(sql, new AdvertisementMapper());
	 }
	 public VacancyModel getSpecificAdvertisements(String advertiseno){
		 String sql="select * from vacancytbl where advertiseno = '"+advertiseno+"'";
		 return jdbcTemplate.queryForObject(sql, new AdvertisementMapper());
	 }
	 
	 public static final class AdvertisementMapper implements RowMapper<VacancyModel>{

		@Override
		public VacancyModel mapRow(ResultSet rs, int rowNum) throws SQLException {
			VacancyModel a = new VacancyModel();
			a.setAdvertiseno(rs.getString("advertiseno"));
			a.setGroupen(rs.getString("groupen"));
			a.setGroupnp(rs.getString("groupnp"));
			a.setPosten(rs.getString("posten"));
			a.setPostnp(rs.getString("postnp"));
			a.setServiceen(rs.getString("serviceen"));
			a.setServicenp(rs.getString("servicenp"));
			a.setDate(rs.getString("date"));
			return a;
		}
		 
	 }

	@Override
	public int documentUploadSave(String document_type, String username,
			String filename) {
		
		
		String query = "insert into tblimages (imagetype, username, imagename) values ('"+document_type+"','"+username+"','"+username+document_type+".jpg')";
		return jdbcTemplate.update(query);
	}

	@Override
	public int verificationStatus(String userid) {
		String sql = "select status from usertbl where userid='"+userid+"'";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	
}
