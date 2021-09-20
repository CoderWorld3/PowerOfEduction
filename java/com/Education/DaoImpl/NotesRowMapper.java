package com.Education.DaoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import com.Education.Notes.Notes;

public class NotesRowMapper implements ResultSetExtractor<List<Notes>> {

@Override
	public List<Notes> extractData(ResultSet rs) throws SQLException, DataAccessException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub

		List<Notes> notes = new  ArrayList<Notes>();
		while(rs.next()) {

			Notes notes1 = new Notes();

	    notes1.setId(rs.getString("id"));
		    notes1.setNo_subject(rs.getString("No_Subject_name"));

		
		    notes.add(notes1);
			}
		return notes;
	}

}
