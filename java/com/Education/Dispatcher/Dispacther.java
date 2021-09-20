package com.Education.Dispatcher;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import com.Education.Configuration.Configuration1;

public class Dispacther implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		// TODO Auto-generated method stub
 AnnotationConfigWebApplicationContext annotationConfigWebApplicationContext = new AnnotationConfigWebApplicationContext();
 annotationConfigWebApplicationContext.register(Configuration1.class);
 DispatcherServlet dispatcherServlet = new DispatcherServlet(annotationConfigWebApplicationContext);
 ServletRegistration.Dynamic dynamic= servletContext.addServlet("Dispacther",dispatcherServlet);
 dynamic.addMapping("/");
 dynamic.setLoadOnStartup(1);
		 
	
	}

}
