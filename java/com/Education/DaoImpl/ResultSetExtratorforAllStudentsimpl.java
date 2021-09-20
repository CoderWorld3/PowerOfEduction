package com.Education.DaoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.Education.Client.Registration;

public class ResultSetExtratorforAllStudentsimpl implements ResultSetExtractor<List<Registration>> {

	
	

@Override
public List<Registration> extractData(ResultSet rs) throws SQLException, DataAccessException {
	 //TODO Auto-generated method stub
	

		List<Registration> registration = new  ArrayList<>();
		
		while(rs.next()) {

			Registration registration2 = new Registration();
			String password = rs.getString("St_password");
			char[] password1= password.toCharArray();

		    registration2.setId(rs.getString("id"));
		    registration2.setFirstName(rs.getString("St_first_Name"));
		    registration2.setLastName(rs.getString("St_last_Name"));

		    registration2.setMiddleName(rs.getString("St_middle_Name"));
		    registration2.setUserName(rs.getString("St_userName"));
		    registration2.setEmail(rs.getString("St_email"));
		    registration2.setPhone(rs.getString("St_phone_number"));
		    registration2.setImage(rs.getString("St_image"));
		    registration2.setPassword(password1);
            registration.add(registration2);
			}
		
			
		return registration	;
}
}

 