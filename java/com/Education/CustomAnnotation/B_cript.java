package com.Education.CustomAnnotation;

import static java.lang.annotation.ElementType.CONSTRUCTOR;
import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.LOCAL_VARIABLE;
import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.ElementType.TYPE;
import static java.lang.annotation.ElementType.TYPE_PARAMETER;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

import com.Education.CustomAnnotationImpl.CustomLoginImpl;

@Documented
@Retention(RUNTIME)
@Target({ TYPE, FIELD, METHOD, CONSTRUCTOR, LOCAL_VARIABLE, TYPE_PARAMETER })
@Constraint(validatedBy = CustomLoginImpl.class)
public @interface B_cript {
    String message() default "pasword ";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};

}
