package com.Education.DaoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.Education.Teacher.Teacher;

public class TeacherResultSetMApperId implements ResultSetExtractor<Teacher> {

	
	
		  @Override
		  public Teacher extractData(ResultSet rs) throws SQLException, DataAccessException {
		     //TODO Auto-generated method stub
		  
		        Teacher Teacher2 = new Teacher();
		          Teacher2.setFirstName(rs.getString("firstName"));
		          Teacher2.setLastName(rs.getString("lastName"));
		          Teacher2.setUserName(rs.getString("userName"));
		          Teacher2.setEmail(rs.getString("email"));
		          Teacher2.setPhone(rs.getString("phone"));
		          //Teacher2.setTeacherName(rs.getString("teacher_id"));
		           String password =rs.getString("password1");
		           char[] password1 = password.toCharArray();
		          Teacher2.setPassword(password1);
		        
		      
		        
		      return Teacher2	;
		  }
	  
	  }


 