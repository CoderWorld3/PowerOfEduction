package com.Education.Dao;

import javax.mail.MessagingException;

public interface EmailDao {
public void sendEmail(String mail,int result,String text) throws MessagingException;

public void sendEmailToUs(String mail,String name,String city,String text) throws MessagingException;
}
