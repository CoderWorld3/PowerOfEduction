<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@ page isELIgnored = "false" %>
    <!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/PowerOfEducation/StaticFile/css/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
  </head>
  <body class="background_color">

      <!-- header -->
    <%@include file="/WEB-INF/view/Header.jsp" %>
          
          <!-- header end -->
          
    <%@include file="/WEB-INF/view/preLodder.jsp" %>
          
    <main class="col-md-8 offset-2 h-100 mt-5 btn-outline-back-50 ">
        <div class="container-fluid">
           <div class="container h-100 w-100 ">
             <section class="shadow-lg h-100 w-100 text-center  rounded-top">
                 
            <q class="btn  bg-info rounded-pill fs-4">Do not let what you cannot do interfere with what you can do</q>
            <p class="mt-2">
                A phrase to study that can also be applied to all kinds of complicated tasks.</p>    
            </section>  
         
        </div>    
        </div>
        <!-- <section class="img1 w-100">

          <img src="CodeWorld.jpg" class="img-fulid img1 img-fluid  w-100" alt="">
        </section> -->
 <div class="container ">
  <div id="carouselExampleInterval" class="carousel slide " data-bs-ride="carousel">
    <div class="carousel-inner shadow-lg">
      <div class="carousel-item  active img1" data-bs-interval="10000">
        <img src="/PowerOfEducation/StaticFile/image/CodeWorld.jpg" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item img1" data-bs-interval="1000">
        <img src="/PowerOfEducation/StaticFile/image/code.jpg" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item img1" data-bs-interval="1000">
        <img src="/PowerOfEducation/StaticFile/image/code1.jpg" class="d-block w-100" alt="..." >
      </div>
      <div class="carousel-item img1" data-bs-interval="1000">
        <img src="/PowerOfEducation/StaticFile/image/web.jpeg" class="d-block w-100" alt="..." >
      </div>  <div class="carousel-item img1" data-bs-interval="1000">
        <img src="/PowerOfEducation/StaticFile/image/h&c&j.jpeg" class="d-block w-100" alt="..." >
      </div>  <div class="carousel-item img1" data-bs-interval="1000">
        <img src="/PowerOfEducation/StaticFile/image/app.jpeg" class="d-block w-100" alt="..." >
      </div>  <div class="carousel-item img1" data-bs-interval="1000">
        <img src="/PowerOfEducation/StaticFile/image/lapTop.jpg" class="d-block w-100" alt="..." >
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
      
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
     
      <span class="visually-hidden">Next</span>
    </button>
  </div>
   
   </div>
 </div>
</main>

<!-- Contect About Courss And Teacher -->
<div class="container col-md-4 offset-3 mt-4  StudentAndTeacher">
  <div class="mx-auto  " id="list-example">
  <button class=" text-dark shadow-lg fw-blod  btn border border-white btn-outline-info fas fa-user-graduate moveRightAndLeft " id="courses">Courses</button>
  <button class="btn btn-outline-info text-dark shadow-lg  fas fa-chalkboard-teacher "id="teacherId">Teachers</button>
  </div>
  </div>
  <div class="col-md-8  offset-2   col-12"id="coursesRow" >
    <div class="container ">
    <div class="container mt-5">
      <div class="row  w-100" >
        <table class="table courseHide  table-info table-hover alert-dark" id="courseData">
          <thead>
            <tr>
              <th scope="col">ID</th>
              <th scope="col">CourseName</th>
              <th scope="col">CourseDuration</th>
            </tr>
          </thead>
          <tbody  >
            <tr >
              <th id="courseId" scope="row"></th>
              <td id="courseName" ></td>
              <td id="courseDuration"></td>
            
            </tr>
                               </tbody>
        </table>
       
     </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
           <table class="table courseHide  table-info table-hover alert-dark" id="teacherData">
            <thead>
              <tr>
                <th scope="col">ID</th>
                <th scope="col">TeacherName</th>
                <th scope="col">TeacherSubject</th>
                <th scope="col">PhoneNumber</th>
              </tr>
            </thead>
            <tbody  >
              <tr >
                <th id="courseId" scope="row"></th>
                <td id="courseName" ></td>
                <td id="courseDuration"></td>
                <td id="courseLink"></td>
              </tr>
                                 </tbody>
          </table> 
         
        </div>
     </div>
    </div>
  </div>

  </div>




<!-- Contect About Courss And Teacher  end-->
<!-- Contact -->
<div class="col-4 offset-4 customText  text-center"> <marquee>
<ul class="d-flex rounded-top ms-5 mt-5 badge fs-2 btn-outline-info text-center text-info">
  <li>C</li>
  <li>o</li>
  <li>n</li>
  <li>T</li>
  <li>a</li>
  <li>c</li>
  <li>t</li>
</ul>  </marquee>
</div>
<div class="container col-md-8 offset-2">
  <form class="row  needs-validation"  method="post" action="sendEmailToUs"novalidate>
    <div class="col-md-5">
      <label for="validationCustom01" class="form-label">First name</label>
      <input type="text" class="form-control"  name="userName"id="validationCustom01" placeHolder="NAme"required>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-4">
      <label for="validationCustom02" class="form-label">Last name</label>
      <input type="text" class="form-control" id="validationCustom02" value="Otto" required>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-4">
      <label for="validationCustomUsername" class="form-label">Email</label>
      <div class="input-group has-validation">
        <span class="input-group-text" id="inputGroupPrepend">@</span>
        <input type="email" class="form-control" name="email" id="validationCustomUsername" aria-describedby="inputGroupPrepend" required>
        <div class="invalid-feedback">
          Please choose a usermail.
        </div>
      </div>
    </div>
    <div class="col-md-6">
      <label for="validationCustom03" class="form-label">City</label>
      <input type="text" class="form-control" name="city" id="validationCustom03" required>
      <div class="invalid-feedback">
        Please provide a valid city.
      </div>
    </div>
   
    <div class="col-md-3">
      <label for="validationCustom05" class="form-label">Zip</label>
      <input type="text" class="form-control" id="validationCustom05" required>
      <div class="invalid-feedback">
        Please provide a valid zip.
      </div>
    </div>
    <div class="col-12">
      <div class="form-check">
        <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
        <label class="form-check-label" for="invalidCheck">
          Agree to terms and conditions
        </label>
        <div class="invalid-feedback">
          You must agree before submitting.
        </div>
      </div>
    </div>
    <div class="col-12">
      <button class="btn btn-primary" type="submit">Submit form</button>
    </div>
  </form>
  <h3>${messageFromServer }</h3>
  </div>

<!-- Contact end-->
<!-- login And Registratiom -->

<div class="container col-md-4 offset-3 mt-4 StudentAndTeacher">
  <div class="mx-auto">
  <a class="btn btn-outline-info fas fa-sign-in-alt moveUpAndDown " href="/PowerOfEducation/login">SignIn</a>
  <a class="btn btn-outline-info fas fa-user-plus moveUpAndDown " href="/PowerOfEducation/imageUpload">Regiistration</a>
  </div>
  </div>

<!-- login And Registratiom  end-->
    

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
   <div class="col-md-8 offset-2">
   <div class="container">
  <div class="container mt-5">
    
   
    <%@include file="/WEB-INF/view/Fotter.jsp" %>
  </div>
  </div>
</div>

<script src="/PowerOfEducation/StaticFile/js/home.js"></script>
  </body>
</html>
<!-- login And Registratiom  end-->
