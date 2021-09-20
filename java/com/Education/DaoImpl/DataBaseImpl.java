package com.Education.DaoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;

import com.Education.Client.AssginLogin;
import com.Education.Client.Registration;
import com.Education.Client.StudentAndCourse;
import com.Education.Client.StudentAndNote;
import com.Education.Courses.Courses;
import com.Education.Dao.DataBaseDao;
import com.Education.Notes.Notes;
import com.Education.Request.StudentRequest;
import com.Education.Teacher.Teacher;
import com.uitl.method.SecureNumberGenerate;
import com.uitl.method.imageNAme;

@Repository
public class DataBaseImpl implements DataBaseDao {
	@Autowired
	 private JdbcTemplate jdbcTemplate;
	@Autowired
	 private PasswordEncoder encoder;
	SecureNumberGenerate uRandom = new SecureNumberGenerate();
	imageNAme na = new imageNAme(); 
	// TODO Auto-generated constructor stub

//	**********************************************************************************
	@Override
	public int insertRegistrationData(Registration registration,String image) {
		// TODO Auto-generated method stub
		Integer i = dataCount("student_de");
		System.out.println(i);
		i++;
		String prifix="St";
		String suffix= "POE";
		String id=prifix+""+i+""+suffix;
		
		
		char[] pass = registration.getPassword();
		CharSequence charSequence= new String(pass);
		String password = new String(encoder.encode(charSequence));
		System.out.println(password);
		 
		char g = registration.getGender();
		String gender = Character.toString(g);
		String sql = "INSERT INTO Student_de VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
		Object ob[] = {id, registration.getFirstName(),registration.getMiddleName(), registration.getLastName(),registration.getEmail(),
				 registration.getAddress(), password,image, registration.getUserName(),
				 registration.getAge(), gender,registration.getPhone()
			

		};
		int dataupdate = jdbcTemplate.update(sql, ob);
		return dataupdate;
	}

	@Override
	public List<Registration> showStudent() {
		// TODO Auto-generated method stub
		String sql = "select * from student_de";
		List<Registration> registration= jdbcTemplate.query(sql,new ResultSetExtratorforAllStudentsimpl());
		return registration;
	}

	@Override
	public Registration findByStudentId(String userName) {
		// TODO Auto-generated method stub
		String sql="select * from Student_de where id = ?";
		 return jdbcTemplate.queryForObject(sql,new Object[] { userName }, new RowMApperImpl());
		
	}
    

	@Override
	 public int deleteByStudentID(String id) {
		// TODO Auto-generated method stub
		String sql="DELETE FROM Student_de WHERE id  = ?";
		 return jdbcTemplate.update(sql,id);
	
	}


//	**********************************************************************************
	
	@Override
	public int dataCount(String tableName) {
		// TODO Auto-generated method stub
		System.out.println("data");
		String sql="select count(id) from  "+tableName;
		Object o[]= {tableName};
				return jdbcTemplate.queryForObject(sql, Integer.class);
	}
//	**********************************************************************************

	
	@Override
	public int saveCourse(Courses course) {
		// TODO Auto-generated method stub
		Integer i = dataCount("Course_de");
		i++;
		String prifix="Course";
		String suffix= "POE";
		String id=prifix+""+i+""+suffix;
		String sql = "Insert Into course_de values(?,?,?,?)";
		Object ob[]= { id,course.getCourseName(),course.getCourseDuration(),course.getCourseLink()};
		int j= jdbcTemplate.update(sql,ob);
		
		
		return j;
	}

	@Override
	public List<Courses> getCourses() {
		// TODO Auto-generated method stub
		var sql = "Select * from Course_de;";
		List<Courses> i = (List<Courses>) jdbcTemplate.query(sql, new CourseRowMapper());
		return i;
	}

	@Override
	public Courses findByCourseID(String id) {
		// TODO Auto-generated method stub
		String sql="select * from Course_de where id = ?";
		 return jdbcTemplate.queryForObject(sql,new Object[] { id }, new RowMapperCourse());
		
	}

	@Override
	public int deleteByCourseID(String id) {
		// TODO Auto-generated method stub

		String sql="DELETE FROM course_de WHERE id  = ?";
		 return jdbcTemplate.update(sql,id);
		
	}

//	**********************************************************************************
	
	
	@Override
	
	 public int saveTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
         Integer i = dataCount("teacher_de");
		
		i++;
		String prifix="Te";
		String suffix= "POE";
		String id=prifix+""+i+""+suffix;
		
		
		char[] pass = teacher.getPassword();
		CharSequence charSequence= new String(pass);
		String password = new String(encoder.encode(charSequence));
		System.out.println(password);
		 
		char g = teacher.getGender();
		String gender = Character.toString(g);
		String sql = "INSERT INTO Teacher_de VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object ob[] = {id, teacher.getFirstName(),teacher.getMiddleName(), teacher.getLastName(),teacher.getEmail(),
				 teacher.getPhone(),teacher.getAddress(), password,"Image", gender,
					
				 teacher.getAge(), teacher.getUserName() ,teacher.getSubject()
			

		};
		int dataupdate = jdbcTemplate.update(sql, ob);
		return dataupdate;
	}

	@Override
	public List<Teacher> getTeachers() {
		// TODO Auto-generated method stub
		var sql = "Select * from teacher_de;";
		List<Teacher> i = (List<Teacher>) jdbcTemplate.query(sql, new TeacherResultSetMApper());
		return i;
	}

	@Override
	public Teacher findByTeacherID(String id) {
		// TODO Auto-generated method stub

		String sql="select * from teacher_de where id = ?";
		 return jdbcTemplate.queryForObject(sql,new Object[] { id }, (RowMapper<Teacher>) new TeacherResultSetMApperId());
		
	}

	@Override
	public int deleteByTeacherID(String id) {
		// TODO Auto-generated method stub

		String sql="DELETE FROM Teacher_de WHERE id  = ?";
		 return jdbcTemplate.update(sql,id);
		
	}

	@Override
	public int updateCourse(String id,String name,String duration ,String link) {
		// TODO Auto-generated method stub
		String sql ="update course_de set course_name=?,course_duration=?, course_link=? where id=?";
		Object ob[]= {name,duration,link,id};
		return jdbcTemplate.update(sql,ob);
	}

    public int setTrueOrFalse(int val) {

    	return jdbcTemplate.update("SET FOREIGN_KEY_CHECKS="+val);
    	  
    }

	@Override
	public int updateTeacher(String id, String name, String middleName, String lastName, String subject, char gender,
			Integer age, String address, String password, Integer phone, String email,  String username) {
		// TODO Auto-generated method stub

		String sql ="UPDATE Teacher_de SET Te_first_name = ?, Te_middle_name =? , Te_last_name = ?,Te_email=?, Te_phone_number = ?, Te_address = ?, Te_password = ?, gender = NULL, Te_age =?, userName = ?,Te_subject=? WHERE id = ?)";
		Object ob[] = { name,middleName, lastName,email,
				 phone,address, password,"Image", gender,
					
				 age,username,subject,id};
			

		
		int dataupdate = jdbcTemplate.update(sql, ob);
		return dataupdate;
		
	}

	@Override
	public int saveNotes(String No_subject,String notes,String No_tittle) {
		// TODO Auto-generated method stub
		Integer i = dataCount("Notes");
		i++;
		String prifix="Note";
		String suffix= "POE";
		String id=prifix+""+i+""+suffix;
		String sql = "Insert Into Notes values(?,?,?,?)";
		Object ob[]= { id,No_subject,notes,No_tittle};
		int j= jdbcTemplate.update(sql,ob);
		
		
		return j;
		
	}

	@Override
	public Object findStudentByName(String name) {
		// TODO Auto-generated method stub
		var sql="select * from Student_de where St_first_name = ?";
		Object o1[]= {name};
		  return jdbcTemplate.query(sql, o1, new RowMApperImpl());
		
		
	}

	@Override
	public List<Notes> getNotes() {
		// TODO Auto-generated method stub
		var sql="select * from notes";
		
		return jdbcTemplate.query(sql,  new NotesRowMapper());
	}
@Override
	public int requestCourse( String course_id, String st_Id) {
		// TODO Auto-generated method stub
		Date d= new Date();
		Integer i = dataCount("Student_de_Request");
		i++;
		String prifix="Request";
		String suffix= "POE";
		String id=prifix+""+i+""+suffix;
		System.out.println("error not");
		String sql = "Insert Into Student_de_Request values(?,?,?,?)";
		Object ob[]= { id,course_id,st_Id,d};
		int j= jdbcTemplate.update(sql,ob);
		return j;
		
		
	}
@Override
	public int requestNotes(String notes_id, String st_Id) {
		// TODO Auto-generated method stub
		Date d = new Date();
		Integer i = dataCount("Student_de_Request");
		i++;
		String prifix="Request";
		String suffix= "POE";
		String id=prifix+""+i+""+suffix;
		System.out.println("error not");
		String sql = "Insert Into Student_de_Request values(?,?,?,?)";
		Object ob[]= {id, notes_id,st_Id,d};
		int j= jdbcTemplate.update(sql,ob);
		return j;
		
	}

@Override
public List<StudentRequest> getRequest() {
	// TODO Auto-generated method stub
	return null;
}

@Override
public int assginCourse(String St_id, String courseID) {
	// TODO Auto-generated method stub
	Integer i = dataCount("StudentAndCourse");
	i++;
	String prifix="StAndCo";
	String suffix= "POE";
	String id=prifix+""+i+""+suffix;
	var sql = "insert into StudentAndCourse values(?,?,?)";
	Object ob[]= {id, St_id,courseID};
	int j= jdbcTemplate.update(sql,ob);
	return j;
}

@Override
public int assginNote(String St_id, String notesID,String courseId) {
	// TODO Auto-generated method stub
	Integer i = dataCount("StudentAndNotes");
	i++;
	String prifix="StAndNo";
	String suffix= "POE";
	String id=prifix+""+i+""+suffix;
	var sql = "insert into StudentAndNptes values(?,?,?,?)";
	Object ob[]= {id, St_id,notesID,courseId};
	int j= jdbcTemplate.update(sql,ob);
	return j;
}

@Override
public int assginCourseToTeacher(String te_id, String courseID) {
	// TODO Auto-generated method stub
	Integer i = dataCount("TeacherAndCourse");
	i++;
	String prifix="Request";
	String suffix= "POE";
	String id=prifix+""+i+""+suffix;
	var sql = "insert into TeacherAndCourse values(?,?,?)";
	Object ob[]= {id, te_id,courseID};
	int j= jdbcTemplate.update(sql,ob);
	return j;
}

@Override
public int assginLogin(String name, String password, int i) {
	// TODO Auto-generated method stub
	
	 String password1=encoder.encode(password);
	
	 var sql ="insert into SignIn values(?,?,?)";
	 Object o[]= {name,password1,i};
	int j= jdbcTemplate.update(sql,o);
	return j;
}

@Override
public int assginRole(String name, String role) {
	// TODO Auto-generated method stub
	 var sql ="insert into userRole values(?,?)";
	 Object o[]= {name,role};
	int j= jdbcTemplate.update(sql,o);
	return j;
	
}

@Override
public List<AssginLogin> assginLogin() {
	// TODO Auto-generated method stub
	var sql= "Select * from SignIn";
	List<AssginLogin> ass = jdbcTemplate.query(sql, new ReSetAssginLogin());
	return ass;
	
}

@Override
public List<StudentAndCourse> studentAndCourse() {
	// TODO Auto-generated method stub
	var sql ="select * from StudentAndCourse";
	List<StudentAndCourse> SandC = jdbcTemplate.query(sql, new ApprovedCourse());
	
	return SandC;
}

@Override
public List<StudentAndNote> studentAndNote() {
	// TODO Auto-generated method stub
	var sql ="select * from StudentAndNotes";
	List<StudentAndNote> SandC = jdbcTemplate.query(sql, new ApprovedNotes());
	
	return SandC;
}

@Override
public List<Courses> showRequestCourses() {
	// TODO Auto-generated method stub
	return null;
}}
	
	
		
		
		
	

	
	
