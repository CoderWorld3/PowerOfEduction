<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 <%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
 <%@ page import = "javax.servlet.http.*" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="/PowerOfEducation/StaticFile/css/home.css" /> 

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

   
  </head>
  <body>
  
 
    
   
      <!-- header -->

  <%@include file="/WEB-INF/view/Header.jsp" %>
  <!--  -->
<form:form  action="sendEmail" modelAttribute="regData">

<br/>
<input type="submit" value="ConfirmEmail">
<table class="table">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">First Name</th>
        <th scope="col">Middle Name</th>
        <th scope="col">Last Name</th>
        <th scope="col">Age</th>
        <th scope="col">Gender</th>
        <th scope="col">Image</th>
        <th scope="col">Email</th>
        <th scope="col">Moblie</th>
        <th scope="col">Address</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th scope="row">Registration</th>
            <td> ${regData.firstName} </td>
            <td> ${regData.middleName} </td>
            <td> ${regData.lastName} </td>
            <td> ${regData.age} </td>
            <td> ${regData.gender} </td>
            <td> ${image} </td>
            <td> ${regData.email} </td>
            <td> ${regData.phone} </td>

            <td> ${regData.address} </td>


       
      </tr>
     
    </tbody>
  </table>

</form:form>




<a href="/PowerOfEducation//login">Login</a>
 <a class="btn btn-outline-info mt-5  fas fa-user-plus moveUpAndDown " href="/PowerOfEducation/registrationData">PersonalInfrommation</a>


<div class="col-md-8 offset-2">
    <div class="container mt-5">
      
     
      <%@include file="/WEB-INF/view/Fotter.jsp" %>
    </div>
  </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>