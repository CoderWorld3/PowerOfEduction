package com.Education.Configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.Education.ClientCommunication.Phone;
import com.Education.DaoImpl.DataBaseImpl;

@Configuration
@ComponentScan(basePackages = "com.Education")
@EnableWebMvc
public class Configuration1  implements WebMvcConfigurer{
	@Bean
	public DataBaseImpl dataBaseImpl() {
		return new DataBaseImpl();
	}
	@Bean
	 ViewResolver resolver() {
		 InternalResourceViewResolver internalResourceViewResolver = new InternalResourceViewResolver();
		 internalResourceViewResolver.setPrefix("/WEB-INF/view/");
		 internalResourceViewResolver.setSuffix(".jsp");
		 return internalResourceViewResolver;
	 }
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
	registry.addResourceHandler("/StaticFile/**").addResourceLocations("/resource/");
	
	}
	
	@Bean
	public Phone phone()
	{
		return new Phone();
	}
	@Bean
	public JavaMailSender configuSenderImpl() {
		JavaMailSenderImpl impl = new JavaMailSenderImpl();
		impl.setHost("smtp.gmail.com");
		impl.setUsername("arvinmishraji@gmail.com");
		impl.setPassword("avin@1234");
		impl.setPort(587);

		Properties properties = new Properties();
		properties.put("mail.smtp.starttls.enable", true);
		properties.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		impl.setJavaMailProperties(properties);
	
		return impl;
	}
	@Bean
	public JdbcTemplate jdbcTemplate() {
		return new JdbcTemplate(dataSource());
	}
    @Bean
    public DataSource dataSource() {
    	DriverManagerDataSource dataSource =  new DriverManagerDataSource();
        dataSource.setUsername("root");
        dataSource.setPassword("arvin@1234");
        dataSource.setUrl("jdbc:mysql://localhost:3306/PowerOFEducation");
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        return dataSource;
    	
    }
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
      registry.addViewController("/").setViewName("home");
    }
  @Bean
  public CommonsMultipartResolver multipartResolver() {
	  return new CommonsMultipartResolver()
			  ;
  }
  
}
