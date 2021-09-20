package com.Education.DaoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.Education.Teacher.Teacher;

public class TeacherResultSetMApper implements ResultSetExtractor<List<Teacher>> {

	
	

	  @Override
	  public List<Teacher> extractData(ResultSet rs) throws SQLException, DataAccessException {
	     //TODO Auto-generated method stub
	  
	      List<Teacher> Teacher = new  ArrayList<>();
	      while(rs.next()) {
	  
	        Teacher Teacher2 = new Teacher();
	         Teacher2.setId(rs.getString("id"));
	        
	          Teacher2.setFirstName(rs.getString("Te_first_name"));
	          Teacher2.setLastName(rs.getString("Te_last_Name"));
	          Teacher2.setUserName(rs.getString("userName"));
	          Teacher2.setEmail(rs.getString("Te_email"));
	          Teacher2.setPhone(rs.getString("Te_phone_number"));
	          //Teacher2.setTeacherName(rs.getString("teacher_id"));
	           String password =rs.getString("Te_password");
	           Teacher2.setSubject(rs.getString("Te_subject"));
	           char[] password1 = password.toCharArray();
	          Teacher2.setPassword(password1);
	          Teacher.add(Teacher2);
	        }
	      
	        
	      return Teacher	;
	  }
}


 