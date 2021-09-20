package com.Education.Security;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.Education.Client.Login;
import com.Education.DaoImpl.CustomLoginDaoIml;
import com.Education.Exception.UserNotfound;
@Service
public class CustomLogin implements UserDetailsService {
	@Autowired
	private CustomLoginDaoIml customLogin;
	@Autowired
	private PasswordEncoder passwordEncoder;
	

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		// TODO Auto-generated method stub

		List<Login> login =  customLogin.findLoginByUserName(userName);
		if(login == null)
			throw new UserNotfound("user DoesNt exits",userName);
		List<GrantedAuthority> authorites = new ArrayList<>();
		List<Login> login3 = new ArrayList<Login>();
		for(Login login2: login)
		{
			System.out.println(login2.getRole());
		}
		SimpleGrantedAuthority authority= new SimpleGrantedAuthority( login.get(0).getRole());
		authorites.add(authority);
		
		return new User(login.get(0).getUserName(),passwordEncoder.encode(login.get(0).getPassword()),authorites);
	}

}
