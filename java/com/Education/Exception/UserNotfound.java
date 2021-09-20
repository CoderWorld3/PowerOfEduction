package com.Education.Exception;

public class UserNotfound extends RuntimeException {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private String message;
private String userName;
public UserNotfound(String message, String userName) {
	super();
	this.message = message;
	this.userName = userName;
}
/**
 * @return the message
 */
public String getMessage() {
	return message;
}
/**
 * @param message the message to set
 */
public void setMessage(String message) {
	this.message = message;
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
@Override
public String toString() {
	return "UserNotfound [message=" + message + ", userName=" + userName + ", getMessage()=" + getMessage()
			+ ", getUserName()=" + getUserName() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
			+ ", toString()=" + super.toString() + "]";
}
public UserNotfound() {
	super();
	// TODO Auto-generated constructor stub
}

}
