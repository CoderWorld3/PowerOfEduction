package com.Education.Configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.Education.Security.CustomLogin;
@EnableWebSecurity(debug = true)
public class SecurityConfiguration extends WebSecurityConfigurerAdapter
{@Autowired
	private PasswordEncoder passwordEncoder;
@Autowired
Configuration1 configuration;
@Autowired
CustomLogin customLogin;
	

//@Override
//protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//	// TODO Auto-generated method stub
//	auth.inMemoryAuthentication()
//	
//	.withUser("arvin")
//	.password("arvin")
//	.roles("admin")
//	.and()
//	.withUser("user")
//	.password("user@1234")
//	.roles("user");
//	
//}
// @Override
//	protected UserDetailsService userDetailsService() {
//		// TODO Auto-generated method stub
//
////     BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
////     String hashedPassword = passwordEncoder.encode("arvin@1234");
////     System.out.println(hashedPassword);
//	 UserDetails userDetial= User.builder().username("arvin").password(passwordEncoder.encode("arvin@1234")).roles("admin").build();
////	 InMemoryUserDetailsManager detailsManager= new InMemoryUserDetailsManager();
////	 detailsManager.createUser(userDetial);
//	 return new InMemoryUserDetailsManager(userDetial);
//	}
 @Bean
 public PasswordEncoder passwordEncoder() {
	 return NoOpPasswordEncoder.getInstance();
 
}
@Override
	protected void configure(HttpSecurity http) throws Exception {
		// TODO Auto-generated method stub
		http.csrf().disable()
		.authorizeRequests()
		.antMatchers("/Admin/**").authenticated()
		.antMatchers("/student/**").hasAnyAuthority("admin","student","teacher")
		.antMatchers("/teacher/**").hasAnyAuthority("admin","teacher")
	    .antMatchers("/**").permitAll()
	    .and()
	    
	    .exceptionHandling().accessDeniedPage("/error")
	    .and()
	    .formLogin().defaultSuccessUrl("/navigation")
	     
		.and().httpBasic()
		.and().formLogin();
		
		
		
		
	}
@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		// TODO Auto-generated method stub
//		auth.authenticationProvider(daoAuthenticationProvider());
//		auth.jdbcAuthentication()
//		.dataSource(configuration.dataSource())
//        .passwordEncoder(passwordEncoder)
//		.usersByUsernameQuery(
//				"SELECT username, userpassword, '1'  FROM Signin WHERE username = ?")
//         .authoritiesByUsernameQuery("select  userName,userRole from userRole where username=?");
	auth.userDetailsService(customLogin).passwordEncoder(passwordEncoder);
		
	}
public DaoAuthenticationProvider daoAuthenticationProvider() {
	DaoAuthenticationProvider authenticationProvider=new DaoAuthenticationProvider();
	authenticationProvider.setPasswordEncoder(passwordEncoder);
	authenticationProvider.setUserDetailsService(  userDetailsService());
	return authenticationProvider;
	
}

}
