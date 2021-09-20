package com.Education.Client;

public class StudentAndNote {
private String id;
private String student_Id;
private String course_Id;
private String note_id;
public StudentAndNote(String id, String student_Id, String course_Id, String note_id) {
	super();
	this.id = id;
	this.student_Id = student_Id;
	this.course_Id = course_Id;
	this.note_id = note_id;
}
/**
 * @return the note_id
 */
public String getNote_id() {
	return note_id;
}
/**
 * @param note_id the note_id to set
 */
public void setNote_id(String note_id) {
	this.note_id = note_id;
}
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
	return "StudentAndNote [id=" + id + ", student_Id=" + student_Id + ", course_Id=" + course_Id + ", note_id="
			+ note_id + "]";
}
public StudentAndNote() {
	super();
	// TODO Auto-generated constructor stub
}

}
