package com.Education.Dao;

import java.util.List;

import com.Education.Client.AssginLogin;
import com.Education.Client.Registration;
import com.Education.Client.StudentAndCourse;
import com.Education.Client.StudentAndNote;
import com.Education.Courses.Courses;
import com.Education.Notes.Notes;
import com.Education.Request.StudentRequest;
import com.Education.Teacher.Teacher;

public interface DataBaseDao {
 
	public List<Registration> showStudent();
	 public Registration findByStudentId(String id);
	 public int dataCount(String tableName);
	  public int insertRegistrationData(Registration registration, String image);
	  public int deleteByStudentID(String id);
	  public Object findStudentByName(String name);


	
  public int saveCourse(Courses course);
  public List<Courses> getCourses();
  public Courses findByCourseID(String id);
  public int deleteByCourseID(String id);

int updateCourse( String name, String duration, String link,String id);
  
  

public int saveTeacher(Teacher Teacher);
public List<Teacher> getTeachers();
public Teacher findByTeacherID(String id);
public int deleteByTeacherID(String id);
 public int updateTeacher(String id, String name,String middleName, String lastName, String subject, char gender, Integer age, String address,String password,Integer phone,String email, String link);


public List<Notes> getNotes();
public int requestCourse(String name ,String id);

public int requestNotes(String name ,String id);
public List<StudentRequest> getRequest();
public int assginCourse(String St_id,String courseID);
public int assginCourseToTeacher(String te_id,String courseID);
public int assginNote(String St_id, String notesID, String courseId);
 public int assginLogin(String name,String password,int i);
 public int assginRole(String name,String role);
 public List<AssginLogin> assginLogin();
int saveNotes(String No_subject, String notes, String No_tittle);

public List<StudentAndCourse> studentAndCourse();
public List<StudentAndNote> studentAndNote();
public List<Courses> showRequestCourses();




}
 
 
