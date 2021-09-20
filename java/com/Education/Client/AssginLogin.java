package com.Education.Client;

public class AssginLogin {
	private String userName;
	private String password;
	private int activeAccount;
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
	/**
	 * @return the activeAccount
	 */
	public int getActiveAccount() {
		return activeAccount;
	}
	/**
	 * @param activeAccount the activeAccount to set
	 */
	public void setActiveAccount(int activeAccount) {
		this.activeAccount = activeAccount;
	}
	public AssginLogin(String userName, String password, int activeAccount) {
		super();
		this.userName = userName;
		this.password = password;
		this.activeAccount = activeAccount;
	}
	public AssginLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

}
