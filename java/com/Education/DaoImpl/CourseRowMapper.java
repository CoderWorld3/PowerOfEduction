package com.Education.DaoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.Education.Courses.Courses;

public class CourseRowMapper implements ResultSetExtractor<List<Courses>>{

	

	@Override
	public List<Courses> extractData(ResultSet rs) throws SQLException, DataAccessException {
		// TODO Auto-generated method stub
		List<Courses> course1 = new  ArrayList<Courses>();
		while(rs.next()) {
		Courses courses  = new Courses();
		courses.setId(rs.getString("id"));
        courses.setCourseName(rs.getString("Course_name"));
        courses.setCourseDuration(rs.getString("Course_duration"));
        courses.setCourseLink(rs.getString("Course_link"));
        course1.add(courses);
		}
        
	
	
	return course1;
	

	}

}
