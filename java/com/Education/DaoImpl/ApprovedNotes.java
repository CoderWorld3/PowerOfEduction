package com.Education.DaoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.Education.Client.StudentAndNote;

public class ApprovedNotes  implements ResultSetExtractor<List<StudentAndNote>>{

	@Override
	public List<StudentAndNote> extractData(ResultSet rs) throws SQLException, DataAccessException {
		// TODO Auto-generated method stub
		List <StudentAndNote> SandN = new ArrayList<StudentAndNote>();
		while(rs.next()) {
			StudentAndNote andNote = new StudentAndNote();
		 	andNote.setId(rs.getString("id"));
		andNote.setStudent_Id(rs.getString("Student_Id"));
		andNote.setCourse_Id("course_id");
		andNote.setNote_id(rs.getString("notes_id"));
		SandN.add(andNote);
		}
		return SandN;
	}	

}
