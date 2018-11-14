package com.project.hrproject.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import com.project.hrproject.dao.RegistrationDao;
import com.project.hrproject.entity.ApplicantsModel;
import com.project.hrproject.entity.Districtcodes;
import com.project.hrproject.entity.RegistrationModel;
import com.project.hrproject.entity.RegistrationNextModel;
import com.project.hrproject.entity.UserModel;
import com.project.hrproject.entity.VacancyModel;

public class RegistrationDaoImpl implements RegistrationDao {
	private NamedParameterJdbcTemplate template;
private JdbcTemplate jdbcTemplate;
	

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
		this.template = new NamedParameterJdbcTemplate(jdbcTemplate);
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
	 
	 @Override
		public VacancyModel getAdvertisementsById(String id) {
			String query = "select * from vacancytbl where id='"+id+"'";
			 return jdbcTemplate.queryForObject(query, new AdvertisementMapper());
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
			a.setRegioncode(rs.getString("regioncode"));
			a.setId(rs.getString("id"));
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
	
	

	@Override
	public List<Districtcodes> getDistricts() {
		String sql = "select * from districtcodes";
		return jdbcTemplate.query(sql, new DistrictsMapper());
	}
	
	 public static final class DistrictsMapper implements RowMapper<Districtcodes>{

			@Override
			public Districtcodes mapRow(ResultSet rs, int rowNum) throws SQLException {
				Districtcodes d = new Districtcodes();
			d.setDistrictcode(rs.getString("districtcode"));
			d.setDistrictname(rs.getString("districtname"));
				return d;
			}
			 
		 }



	@Override
	public int register(ApplicantsModel am) {
		int status=0;
		String query = "insert into usertbl (username, password, title, firstname, middlename, lastname, email, advertiseno) values ('"+am.getUsername()+"', '"+am.getPassword()+"', '"+am.getTitle()+"', '"+am.getFirstname()+"', '"+am.getMiddlename()+"', '"+am.getLastname()+"', '"+am.getEmail()+"', '"+am.getAdvertiseno()+"')";
		try {
			status = jdbcTemplate.update(query);
		}
		catch(Exception e) {
			System.out.println(e);
			status = 0;
		}
		return status;
	}

	@Override
	public int updateuser(UserModel userModel) {
		int status = 0;
		String sql = "update usertbl set name=:name, father=:father, grandfather=:grandfather, fathernep=:fathernep, grandfathernep=:grandfathernep, mother=:mother, spouse=:spouse, permanentaddress=:permanentaddress, permanentaddressnep=:permanentaddressnep, perdistrict=:perdistrict, pervdcmun=:pervdcmun, perwardno=:perwardno, pertole=:pertole, tempaddress=:tempaddress, citizenshipno=:citizenshipno, citizenshipIssuedDate=:citizenshipIssuedDate, citizenshipIssuedDistrict=:citizenshipIssuedDistrict, phonenumber=:phonenumber, email=:email, dob=:dob, ageyr=:ageyr, agemth=:agemth, ageday=:ageday, lastpassedexam=:lastpassedexam, passeddatebs=:passeddatebs, passeddatead=:passeddatead, advertiseno=:advertiseno, open_comp=:open_comp, mahila=:mahila, adibasi=:adibasi, madhesi=:madhesi, dalit=:dalit, apanga=:apanga, pichadiyeko_chetra=:pichadiyeko_chetra";
		try {
			status = template.update(sql, new BeanPropertySqlParameterSource(userModel));
		} catch (Exception e) {
			System.out.println(e);
			status = 0;
		}
		return status;
	}

	

	
}
