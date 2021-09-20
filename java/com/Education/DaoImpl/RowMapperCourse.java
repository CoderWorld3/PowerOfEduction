package com.Education.DaoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.Education.Courses.Courses;

public class RowMapperCourse implements RowMapper<Courses> {

	@Override
	public Courses mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Courses courses  = new Courses();
		courses.setId(rs.getString("id"));
        courses.setCourseName(rs.getString("Course_name"));
        courses.setCourseDuration(rs.getString("Course_duration"));
        courses.setCourseLink(rs.getString("Course_link"));
		return courses;
	}

	

}
