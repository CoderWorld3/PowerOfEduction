package com.Education.DaoImpl;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.Education.Dao.EmailDao;

@Service
public class EmailImpl  implements EmailDao{
    @Autowired    
	JavaMailSender emailSender;

	@Override
	public void sendEmail(String email,int otp,String text) throws MessagingException {
		// TODO Auto-generated method stub
//		SimpleMailMessage mailMessage = new SimpleMailMessage();
//		mailMessage.setTo(email);
//		mailMessage.setSubject("otp");
//		mailMessage.setText(text+otp);
//	    emailSender.send(mailMessage);	
		MimeMessage message = emailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		String mSubject=" PowerOfEducation Otp";
		String mContent ="<h3 style='color-red'><center> PowerOfEducation</center><hr/></h3> ";
	    mContent +="<br><hr color=\"rgb(107, 65, 60);\" >\n"
	    		+ "<h3 style=\"color: rgb(107, 65, 60);font-family : cursive;font-size:22px\";> Hello  Madam/sir:<br> This Is Online System Where We Supports you in Programming language And About Bca\n"
	    		+ "  ,Mca-- <strong> PowerOfEducation </strong>\n"
	    		+ " </br></h3>\n"
	    		+ " <hr color=\"rgb(107, 65, 60);\"/>";	
		mContent+=" <h2>Otp for registration in online study System:  "+otp+"</h2>";
		String  mText ="<h2 style=\"text-align: center;color: forestgreen;\">"+text +"</h2>";
		
		helper.setTo(email);
		helper.setSubject(mSubject);
		helper.setText(mContent+" "+mText,true);
		emailSender.send(message);
		
		
		
	}

	@Override
	public void sendEmailToUs(String mail, String name, String city, String text) throws MessagingException {
		// TODO Auto-generated method stub
		MimeMessage message = emailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		String mSubject=" PowerOfEducation";
		String mContent ="<h3 style='color-red'><center> PowerOfEducation</center><hr/></h3> ";
	    mContent +="<br><hr color=\"rgb(107, 65, 60);\" >\n"
	    		+ "<h3 style=\"color: rgb(107, 65, 60);font-family : cursive;font-size:22px\";> Hello  Madam/sir:<br> This Is Online System Where We Supports you in Programming language And About Bca\n"
	    		+ "  ,Mca-- <strong> PowerOfEducation </strong>\n"
	    		+ " </br></h3>\n"
	    		+ " <hr color=\"rgb(107, 65, 60);\"/>";	
		mContent+=" <h2>Welcome To us(online study System):  "+name+"       "+city+"</h2>";
		String  mText ="<h2 style=\"text-align: center;color: forestgreen;\">"+text +"</h2>";
		
		helper.setTo(mail);
		helper.setSubject(mSubject);
		helper.setText(mContent+" "+mText,true);
		emailSender.send(message);
		
	}
	public void sendEmailToUs1(String mail, String text) throws MessagingException {
		// TODO Auto-generated method stub
		MimeMessage message = emailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		String mSubject=" PowerOfEducation";
		String mContent ="<h3 style='color-red'><center> PowerOfEducation</center><hr/></h3> ";
	    mContent +="<br><hr color=\"rgb(107, 65, 60);\" >\n"
	    		+ "<h3 style=\"color: rgb(107, 65, 60);font-family : cursive;font-size:22px\";> Hello  Madam/sir:<br> This Is Online System Where We Supports you in Programming language And About Bca\n"
	    		+ "  ,Mca-- <strong> PowerOfEducation </strong>\n"
	    		+ " </br></h3>\n"
	    		+ " <hr color=\"rgb(107, 65, 60);\"/>";	
		mContent+=" <h2>Welcome To us(online study System):  </h2>";
		String  mText ="<h2 style=\"text-align: center;color: forestgreen;\">"+text +"</h2>";
		
		helper.setTo(mail);
		helper.setSubject(mSubject);
		helper.setText(mContent+" "+mText,true);
		emailSender.send(message);
		
	}

}
