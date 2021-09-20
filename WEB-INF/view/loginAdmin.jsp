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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />


    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
 <style>
     html,body{
         height: 100%;
     }
     body{
         
         text-align: center;
         align-items: center;
         justify-content: center;

     }
     .centerbody{
         width: 100%;
         height: 100vh;

         text-align: center;
         align-items: center;
         justify-content: center;
     }
 </style>
  </head>
  <body> 
      <div class="container">

      <div class="container text-center alert-success text-light">
<h1>Welcome  Admin </h1></div>

<h3 class="text-center mb-3">Gratitude For Coming</h3>
          </div>
      
        
      
    <form:form  action="loginDataAdmin" modelAttribute="loginData" class="row g-3 centerbody  card needs-validation" >
        <div class="car-body  ">
  
        
        <div class="col-md-4 mx-auto position-relative">
          <label for="validationTooltipUsername" class="form-label">Username</label>
          <div class="input-group has-validation">
            <span class="input-group-text fas fa-user" id="validationTooltipUsernamePrepend"></span>
            <form:input path="userName" class="form-control"  path="userName" id="validationTooltipUsername" aria-describedby="validationTooltipUsernamePrepend" required/>
            <div class="invalid-tooltip">
              Please choose a unique and valid username.
            </div>
          </div>
        </div>
        <div class="col-md-4  mx-auto position-relative">
            <label for="validationTooltipUsername" class="form-label">password</label>
            <div class="input-group has-validation">
              <span class="input-group-text fas fa-key" id="validationTooltipUsernamePrepend"></span>
              <form:input path="password"  path="password" class="form-control" id="validationTooltipUsername" aria-describedby="validationTooltipUsernamePrepend" required/>
              <div class="invalid-tooltip">
                Please choose a unique and valid password.
              </div>
            </div>
          </div>
      
    
        </div>
    
        <div class="col-12">
          <button class="btn btn-primary" type="submit">Submit form</button>
        </div>
      </form:form>
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