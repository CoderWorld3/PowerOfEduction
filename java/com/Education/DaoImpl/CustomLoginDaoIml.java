package com.Education.DaoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Education.Client.Login;
import com.Education.Dao.CustomLoginDao;
@Repository	
public class CustomLoginDaoIml  implements CustomLoginDao{
	@Autowired
	private JdbcTemplate jdbcTemplate;

	

	

	@Override
	public List<Login> findLoginByUserName(String userName) {
		// TODO Auto-generated method stub
		var userName1= userName;
		var sql = "select u.userName,u.userPassword,r.userRole from signin as u,userRole as r where u.userName = ? and r.userName=?";
				Object[] ar= {userName,userName1};
		List<Login> login = (List<Login>)jdbcTemplate.query(sql, ar, new SignUpImpl() );
//		List<Login> login1= new ArrayList<Login>();
//		for(Login login3:login) {
//			System.out.println(login3);
//			if(login3.getUserName().equals(userName))
//				login1.add(login3);
//			 if(login1.isEmpty())
//				 throw new UserNotfound("Soory it not you ",userName);
//		}
		return login;

				
				
			
		}
}
	
	
	

