package com.Education.Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class FilterChain implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, javax.servlet.FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		 String name=request.getParameter("userName");
		 System.out.println(name);
		
		
	}
	

}
