package com.Education.CustomAnnotationImpl;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.Education.CustomAnnotation.B_cript;

public class CustomLoginImpl implements ConstraintValidator<B_cript, String> {
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	String password;

	@Override
	public void initialize(B_cript constraintAnnotation) {
		// TODO Auto-generated method stub
		
		
	}

	@Override
	public boolean isValid(String value, ConstraintValidatorContext context) {
		// TODO Auto-generated method stub

		 password = bCryptPasswordEncoder.encode("arvin");
		if(password.equals(value)) {
			return true;
			
		}
		return false;
	}


}
