<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
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
    <div class="container mt-5 mb-5 h-100 w-100 ">
        <a href="/PowerOfEducation/Admin/AdminPanel" class="btn btn-sm btn-outline-dark mx-auto"> Back AdminPanel</a>
       </div>
       <div class="container mt-5 mb-5 h-100 w-100 ">
        <a href="/PowerOfEducation/Admin/addCourse" class="btn btn-sm btn-outline-dark mx-auto"> Back AdminPanel</a>
       </div>
     <div class="container-fluid h-100 w-100 my-auto mt-5 mb-5">
       <div class="my-auto text-center fs-2 fw-blod alert-success">
           IT is Done ${message}
       </div>
         
     </div>
    
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