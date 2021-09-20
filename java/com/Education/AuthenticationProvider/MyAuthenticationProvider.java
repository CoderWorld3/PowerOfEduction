package com.Education.AuthenticationProvider;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.Education.Client.Login;
import com.Education.DaoImpl.CustomLoginDaoIml;
import com.Education.Exception.UserNotfound;

public class MyAuthenticationProvider implements AuthenticationProvider {

	@Autowired
	 private CustomLoginDaoIml customLogin;
	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		// TODO Auto-generated method stub
		var userName = authentication.getName();
	    var userPassword = authentication.getCredentials().toString();
	    var isMatches = false;
        ArrayList<GrantedAuthority> role = new ArrayList<GrantedAuthority>();
		List<Login> login=  customLogin.findLoginByUserName(userName);
		List<Login> login1= new ArrayList<Login>();
		
		for(Login login3:login) {
			isMatches = passwordEncoder.matches(userPassword,login3.getPassword());
			
			if(login3.getUserName().equals(userName) &&  isMatches)  {
				login1.add(login3);
				role.add(new SimpleGrantedAuthority(login3.getRole()));
				
			 if(login1.isEmpty())
				 throw new UserNotfound("Soory it not you ",userName);
		}
		}

		 return new UsernamePasswordAuthenticationToken(userName,isMatches,role );
	}

	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}

}
