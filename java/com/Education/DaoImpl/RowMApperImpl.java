package com.Education.DaoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.Education.Client.Registration;

public class RowMApperImpl implements RowMapper<Registration> {

	@Override
	public Registration mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Registration registration2 = new Registration();

	    registration2.setId(rs.getString("id"));
	    registration2.setFirstName(rs.getString("St_first_Name"));
	    registration2.setLastName(rs.getString("St_last_Name"));

	    registration2.setMiddleName(rs.getString("St_middle_Name"));
	    registration2.setUserName(rs.getString("St_userName"));
	    registration2.setEmail(rs.getString("St_email"));
	    registration2.setPhone(rs.getString("St_phone_number"));

	    registration2.setImage(rs.getString("St_image"));
	    return registration2;
	}

	

}
