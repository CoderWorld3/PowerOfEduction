package com.Education.Request;

import javax.validation.constraints.NotNull;

public class StudentRequest {
	
	 private String Id;
	 @NotNull
	 private String re_to;
	 @NotNull
	 private String St_id;
	/**
	 * @return the id
	 */
	public String getId() {
		return Id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		Id = id;
	}
	/**
	 * @return the re_to
	 */
	public String getRe_to() {
		return re_to;
	}
	/**
	 * @param re_to the re_to to set
	 */
	public void setRe_to(String re_to) {
		this.re_to = re_to;
	}
	/**
	 * @return the st_id
	 */
	public String getSt_id() {
		return St_id;
	}
	/**
	 * @param st_id the st_id to set
	 */
	public void setSt_id(String st_id) {
		St_id = st_id;
	}
	public StudentRequest(String id, String re_to, String st_id) {
		super();
		Id = id;
		this.re_to = re_to;
		St_id = st_id;
	}
	public StudentRequest() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "StudentRequest [Id=" + Id + ", re_to=" + re_to + ", St_id=" + St_id + "]";
	}

}
