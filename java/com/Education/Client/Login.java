package com.Education.Client;

public class Login {
	
	private String userName;
	private String password;
	private String role;
	public Login(String userName, String password, String role) {
		super();
		this.userName = userName;
		this.password = password;
		this.role = role;
	}
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @return the role
	 */
	public String getRole() {
		return role;
	}
	/**
	 * @param role the role to set
	 */
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "Login [userName=" + userName + ", password=" + password + ", role=" + role + "]";
	}
	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}
	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

}
