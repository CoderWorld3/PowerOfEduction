<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@ page isELIgnored = "false" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  </head>
  <body>
     <!-- header -->
    <%@include file="/WEB-INF/view/Header.jsp" %>
          
          <!-- header end -->
   
      <div class="container">
      <div class="container  mx-auto  col-md-8 offset-2">
      
        <div class="row  col-md-10 ">

    <c:forEach var = "i" items="${i}">
          <div class="col-md-4 m-5 shadow-lg bg-info text-center ">
            <div class="card text-info" style="width: 18rem;">
                <div class="card-body  ">
                  <h5 class="card-title">${i.id}</h5>
                  <h6 class="card-subtitle mb-2 fs-2 text-muted">${i.firstName}</h6>
                  <p class="card-text">${i.subject}</p>
                  <p class="card-text">${i.phone}</p>
                </div>
              </div>

          </div>
          
        </c:forEach>
        </div>
         
        </div>
      </div>

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