package com.Education.DaoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.Education.Client.Login;

public class SignUpImpl implements RowMapper<Login> {



	@Override
	public Login mapRow(ResultSet rs, int rowNum) throws SQLException {
		Login login = new Login();
		login.setUserName(rs.getString("userName"));
		login.setPassword(rs.getString("userPassword"));
		login.setRole(rs.getString("userRole"));
		
	
		return login;
	}}
