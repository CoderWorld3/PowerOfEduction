package com.Education.Client;

public class StudentAndCourse {
private String id;
private String student_Id;
private String course_Id;
/**
 * @return the id
 */
public String getId() {
	return id;
}
/**
 * @param id the id to set
 */
public void setId(String id) {
	this.id = id;
}
/**
 * @return the student_Id
 */
public String getStudent_Id() {
	return student_Id;
}
/**
 * @param student_Id the student_Id to set
 */
public void setStudent_Id(String student_Id) {
	this.student_Id = student_Id;
}
/**
 * @return the course_Id
 */
public String getCourse_Id() {
	return course_Id;
}
/**
 * @param course_Id the course_Id to set
 */
public void setCourse_Id(String course_Id) {
	this.course_Id = course_Id;
}
@Override
public String toString() {
	return "StudentAndCourse [id=" + id + ", student_Id=" + student_Id + ", course_Id=" + course_Id + "]";
}
public StudentAndCourse(String id, String student_Id, String course_Id) {
	super();
	this.id = id;
	this.student_Id = student_Id;
	this.course_Id = course_Id;
}
public StudentAndCourse() {
	super();
	// TODO Auto-generated constructor stub
}

}
