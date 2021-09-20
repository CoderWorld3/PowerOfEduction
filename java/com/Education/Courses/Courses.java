package com.Education.Courses;

import javax.validation.constraints.NotNull;

public class Courses {
	private String id;
	
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
	@NotNull
	private String courseName;
	@NotNull
	private String courseDuration;
	@NotNull
	private String courseLink;
	public Courses(String courseName, String courseDuration, String courseLink) {
		super();
		this.courseName = courseName;
		this.courseDuration = courseDuration;
		this.courseLink = courseLink;
	}
	/**
	 * @return the courseName
	 */
	public String getCourseName() {
		return courseName;
	}
	/**
	 * @param courseName the courseName to set
	 */
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	/**
	 * @return the courseDuration
	 */
	public String getCourseDuration() {
		return courseDuration;
	}
	/**
	 * @param courseDuration the courseDuration to set
	 */
	public void setCourseDuration(String courseDuration) {
		this.courseDuration = courseDuration;
	}
	/**
	 * @return the courseLink
	 */
	public String getCourseLink() {
		return courseLink;
	}
	/**
	 * @param courseLink the courseLink to set
	 */
	public void setCourseLink(String courseLink) {
		this.courseLink = courseLink;
	}
	@Override
	public String toString() {
		return "Courses [courseName=" + courseName + ", courseDuration=" + courseDuration + ", courseLink=" + courseLink
				+ "]";
	}
	public Courses() {
		super();
		// TODO Auto-generated constructor stub
	}

}
