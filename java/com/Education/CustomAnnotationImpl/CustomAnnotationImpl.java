package com.Education.CustomAnnotationImpl;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import com.Education.CustomAnnotation.Age;

public class CustomAnnotationImpl implements ConstraintValidator<Age, Integer> {
	Integer upper=40,lower=10;
	@Override
	public void initialize(Age constraintAnnotation) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean isValid(Integer value, ConstraintValidatorContext context) {
		// TODO Auto-generated method stub
		if(value==null)
			return false;
		if(value>lower || value<upper)
			return true;
		return false;
	}

}
