package com.Education.DaoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.Education.Client.AssginLogin;
import com.Education.Client.Registration;

public class ReSetAssginLogin implements ResultSetExtractor<List<AssginLogin>> {

	
	

@Override
public List<AssginLogin> extractData(ResultSet rs) throws SQLException, DataAccessException {
	 //TODO Auto-generated method stub
	

		List<AssginLogin> ass = new  ArrayList<>();
		
		while(rs.next()) {
             AssginLogin assginLogin= new AssginLogin();
             assginLogin.setUserName(rs.getString("userName"));
             assginLogin.setPassword("userPassword");
             assginLogin.setActiveAccount(rs.getShort("accountStatus"));
             ass.add(assginLogin);
		
			}
		
			
		return ass	;
}
}

 