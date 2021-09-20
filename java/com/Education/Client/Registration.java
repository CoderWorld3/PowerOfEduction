package com.Education.Client;

import java.util.Arrays;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import com.Education.CustomAnnotation.Age;

public class Registration {
private String id;
@NotBlank(message = "*")
private String firstName;
@NotBlank(message = "*")
private String middleName;
@NotBlank(message = "*")
private String lastName;
@NotBlank(message = "*")
private String userName;
@NotBlank(message = "*")
private String email;
@NotBlank(message = "*")
private String phone;
@NotNull(message = "*")
private char[] password;
private String image;
/**
 * @param image the image to set
 */
public void setImage(String image) {
	this.image = image;
}
public Registration(String id, @NotBlank(message = "*") String firstName, @NotBlank(message = "*") String middleName,
		@NotBlank(message = "*") String lastName, @NotBlank(message = "*") String userName,
		@NotBlank(message = "*") String email, @NotBlank(message = "*") String phone, char[] password, String image,
		String address, Integer age, char gender, boolean checkbox) {
	super();
	this.id = id;
	this.firstName = firstName;
	this.middleName = middleName;
	this.lastName = lastName;
	this.userName = userName;
	this.email = email;
	this.phone = phone;
	this.password = password;
	this.image = image;
	this.address = address;
	this.age = age;
	this.gender = gender;
	this.checkbox = checkbox;
}
private String address;
@Age(message = "*")
private Integer age;
private char gender;
/**
 * @param image the image to set
 */
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
 * @return the middleName
 */
public String getMiddleName() {
	return middleName;
}
/**
 * @param middleName the middleName to set
 */
public void setMiddleName(String middleName) {
	this.middleName = middleName;
}
/**
 * @return the image
//
	this.image = image;
}
/**
 * @return the address
 */
public String getAddress() {
	return address;
}
/**
 * @param address the address to set
 */
public void setAddress(String address) {
	this.address = address;
}
@AssertTrue
private boolean checkbox;


/**
 * @return the gender
 */
public char getGender() {
	return gender;
}
/**
 * @param gender the gender to set
 */
public void setGender(char gender) {
	this.gender = gender;
}
public Registration() {
	super();
	// TODO Auto-generated constructor stub
}
/**
 * @return the image
 */
public String getImage() {
	return image;
}
@Override
public String toString() {
	return "Registration [id=" + id + ", firstName=" + firstName + ", middleName=" + middleName + ", lastName="
			+ lastName + ", userName=" + userName + ", email=" + email + ", phone=" + phone + ", password="
			+ Arrays.toString(password) + ", image=" + image + ", address=" + address + ", age=" + age + ", gender="
			+ gender + ", checkbox=" + checkbox + "]";
}
/**
 * @return the firstName
 */
public String getFirstName() {
	return firstName;
}
/**
 * @param firstName the firstName to set
 */
public void setFirstName(String firstName) {
	this.firstName = firstName;
}
/**
 * @return the lastName
 */
public String getLastName() {
	return lastName;
}
/**
 * @param lastName the lastName to set
 */
public void setLastName(String lastName) {
	this.lastName = lastName;
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
 * @return the email
 */
public String getEmail() {
	return email;
}
/**
 * @param email the email to set
 */
public void setEmail(String email) {
	this.email = email;
}
/**
 * @return the phone
 */
public String getPhone() {
	return phone;
}
/**
 * @param phone the phone to set
 */
public void setPhone(String phone) {
	this.phone = phone;
}
/**
 * @return the password
 */
public char[] getPassword() {
	return password;
}
/**
 * @param password the password to set
 */
public void setPassword(char[] password) {
	this.password = password;
}
/**
 * @return the checkbox
 */
public boolean isCheckbox() {
	return checkbox;
}
/**
 * @param checkbox the checkbox to set
 */
public void setCheckbox(boolean checkbox) {
	this.checkbox = checkbox;
}
/**
 * @return the age
 */
public Integer getAge() {
	return age;
}
/**
 * @param age the age to set
 */
public void setAge(Integer age) {
	this.age = age;
}
}
