<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to us</title>
</head>
<body>

      <!-- header -->
    <%@include file="/WEB-INF/view/Header.jsp" %>
<form action="otpChecker" method="post">
<input type="number" name="otp"/>
<input type="submit" value="WElcomeToUs"/>
  <div class="col-md-8 offset-2">
  <div class="container mt-5">
    
   
    <%@include file="/WEB-INF/view/Fotter.jsp" %>
  </div>
</div>

</form>
</body>
</html>