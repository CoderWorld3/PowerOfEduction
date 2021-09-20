<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@ page isELIgnored = "false" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
        <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/PowerOfEducation/StaticFile/css/Navigation.css">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

   
  </head>
  <body class="background_color">
    <!--header -->
 
    <%@include file="/WEB-INF/view/Header.jsp" %>
 <!-- end Header -->
 <!-- Main -->
 <main class="col-md-10 col-10 mt-5 offset-1">
     <div class="container-fluid">
       <div class="row h-100 " >
         <div class="col-md-6  my-auto "><span class="   mb-4"><q>Education is the most powerful weapon you can use to change the world</q></span><br>
        <span class="badge bg-success text-center"><q>Don’t let what you cannot do interfere with what you can do</q></span>
        <br>
        <!-- Symbol -->
        <svg style="display: none;">
          <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 15 25">
            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
          </symbol>
      
        
        </svg>
        <div class="alert  mt-5  alert-success d-flex align-items-center" role="alert">
          <svg class="bi flex-shrink-0 me-1" width="24" height="50" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
          <div>
  
 
            <Span class="mt-5 text-center">Welcome Here <button class="alert alert-success border-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#profile" aria-controls="offcanvasTop"><q class="moveRightAndLeft">  ${ Username } </q></button>
            </Span>
            ${a }
          
            
          </div>
        </div>
        <!-- Symbol end -->
         <sec:authorize access="hasAuthority('Admin')">
        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
          <a class="btn btn-outline-info me-md-2 " href="/PowerOfEducation/Admin/AdminPanel" type="a">DashBroad</a>
          </sec:authorize>
             <sec:authorize access="hasAuthority('Student')">
        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
          <a class="btn btn-outline-info me-md-2 " href="/PowerOfEducation/Student_deshBorad" type="a">DashBroad</a>
          </sec:authorize>
                <sec:authorize access="hasAuthority('Teacher')">
        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
          <a class="btn btn-outline-info me-md-2 " href="/PowerOfEducation/Teacher_deshBorad" type="a">DashBroad</a>
          </sec:authorize>
          <a class="btn btn-outline-danger"  data-bs-toggle="modal" data-bs-target="#logout" type="a">Logout</a>
        </div>
        <hr>
        </div>
         <div class="col-md-6"><img  class="img mt-2 moveUpAndDown" src="CodeWorld.jpg" alt=""></div>
       </div>
     </div>
     <!-- Modal -->
<div class="modal fade" id="logout" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       Are you sure!!!!!
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <a type="button" href="/PowerOfEducation/logout" class="btn btn-primary">Logout</a>
      </div>
    </div>
  </div>
</div>

    



 </main>
 <!-- end main -->

<!-- Footer -->

    <%@include file="/WEB-INF/view/Fotter.jsp" %>
<!-- Footer end -->

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