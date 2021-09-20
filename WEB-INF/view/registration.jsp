<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!doctype html>
<html lang="en">
  <head>
         <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="/PowerOfEducation/StaticFile/css/registration.css" /> 
<script type="text/javascript" src="/PowerOfEducation/StaticFile/js/JqueryMain.js"></script>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >

  </head>
  <body>
    <!-- header -->

    <%@include file="/WEB-INF/view/Header.jsp" %>
    <!--  -->
      <!-- Handing -->
      <div class="container  mt-5 col-md-6 offset-3 mx-auto">
        <div class="container mt-5 ">
        
                <h1> Student Registeration Form</h1>
        </div>
      </div>
      <!-- header -->
      <!--  -->
      <!-- form -->
      <div class="container  mt-5  mx-auto col-md-8 offset-2">
          <div class="container mt-5">
            <form:form  method="POST" modelAttribute="regData" >
                <fieldset>
                <table>
                   <marquee height=50px behavior="scroll" direction="up" scrollamount="1"><legend>SignUp</legend></marquee>
                   <label for="validationDefault01" class="form-label" for="firstName">FirstName:</label>
                   <form:input class="form-control"  path="firstName" id="firstName1"/></br>
                   <form:errors class="is-valid" path="firstName"> </form:errors>
                   <label for="validationDefault01" class="form-label" for="firstName">middle Name</label>
                   <form:input class="form-control"  path="middleName" id="firstName1"/></br>
                   <form:errors class="is-valid" path="middleName"> </form:errors>
            <label for="validationDefault01" class="form-label" for="LastName">LastName:</label>
            <form:input class="form-control" path="lastName" id="lastName1"/></br>
            <label for="validationDefault01" class="form-label" for="userName">UserName:</label>
            <form:input class="form-control" path="userName" id="userName1"/></br>
            <label for="validationDefault01" class="form-label" for="EmailName">Email:</label>
            <form:input type="email" class="form-control" path="email" id="email1"/></br>
            <form:errors class="is-valid" path="email"/>
            <label for="validationDefault01" class="form-label" for="Password">Password:</label>
            <form:input class="form-control"  type="password" path="password" id="password1"/></br>
            <label for="validationDefault01" class="form-label" for="Password">Phone:</label>
            <form:input class="form-control" type="number" path="phone" id="phoneNumber1"/>
            <form:errors class="is-valid" path="phone"/></br>
            <label for="validationDefault01" class="form-label m-2" for="gender">Gender:</label>
            <label for="validationDefault01" class="form-label m-4" for="male">Male</label>
            <form:radiobutton path="gender" id="gender1" value="m"/>
            <label for="validationDefault01" class="form-label m-4 " for="male">feMale</label>
            <form:radiobutton path="gender" value="f" id="gender1"/>
            <div class="col-auto">            <br/>
            <label for="validationDefault01" class="form-label" for="address">Address:</table>
            <form:input class="form-control"  path="address" id="address"/></br>
            
            <label for="validationDefault01" class="form-label" for="age">Age</label>
            <form:input class="form-control" path="age" id="age1"/>
           
            <form:errors class="is-valid" path="age"></form:errors><br/>
            <label for="validationDefault01" class="form-label form-check" for="CheckBox" > secure YArd</label>
            <form:checkbox path="checkbox"/><br/>
                   <input class="form-control btn-outline-primary" type="submit"/>
                    
                    
                    
                    
                  </fieldset>
              </table>
              
              
              </form:form>
           
          </div>
        
      </div>
     
<!-- image file -->

      <div class="col-md-8 offset-2">
        <div class="container mt-5">
          
         
          <%@include file="/WEB-INF/view/Fotter.jsp" %>
        </div>
      </div>
    <!-- formend -->

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
    <!--  <script type="text/javascript" src="/PowerOfEducation/StaticFile/js/registration.js"></script> -->
  </body>
</html>