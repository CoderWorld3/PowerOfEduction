package com.Education.DaoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.Education.Client.StudentAndCourse;

public class ApprovedCourse implements ResultSetExtractor<List<StudentAndCourse>> {

	@Override
	public List<StudentAndCourse> extractData(ResultSet rs) throws SQLException, DataAccessException {
		// TODO Auto-generated method stub
		List<StudentAndCourse> SandC= new ArrayList<StudentAndCourse>();
		while(rs.next()) {
			StudentAndCourse andCourse = new StudentAndCourse();
			andCourse.setId(rs.getString("id"));
			andCourse.setStudent_Id(rs.getString("Student_Id"));
			andCourse.setCourse_Id(rs.getString("course_id"));
			SandC.add(andCourse);
		}
		return SandC;
	}

}
