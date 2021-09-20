package com.Education.Notes;

public class Notes {
	private String id;
	private String no_title;
	private String no_subject;
	private String no_name;
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
	 * @return the no_title
	 */
	public String getNo_title() {
		return no_title;
	}
	/**
	 * @param no_title the no_title to set
	 */
	public void setNo_title(String no_title) {
		this.no_title = no_title;
	}
	/**
	 * @return the no_subject
	 */
	public String getNo_subject() {
		return no_subject;
	}
	/**
	 * @param no_subject the no_subject to set
	 */
	public void setNo_subject(String no_subject) {
		this.no_subject = no_subject;
	}
	/**
	 * @return the no_name
	 */
	public String getNo_name() {
		return no_name;
	}
	/**
	 * @param no_name the no_name to set
	 */
	public void setNo_name(String no_name) {
		this.no_name = no_name;
	}
	public Notes() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Notes(String id, String no_title, String no_subject, String no_name) {
		super();
		this.id = id;
		this.no_title = no_title;
		this.no_subject = no_subject;
		this.no_name = no_name;
	}
	@Override
	public String toString() {
		return "Notes [id=" + id + ", no_title=" + no_title + ", no_subject=" + no_subject + ", no_name=" + no_name
				+ "]";
	}
	

}
