<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="/PowerOfEducation/StaticFile/css/Teacher_deshBorad.css">
    <!-- customStyle -->

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">


    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">


  </head>
  <body>
      <%@include file="/WEB-INF/view/Header.jsp" %>
      <!-- navbar ends -->
<!-- menuItem -->
      <div class="container-fluid text-center   ">
        <div class="row ">
          <div class="col-md-3 mt-5 gx-5 h-75 ">
            <div class="bg-info shadow-lg mt-5 teacherTask ">
            <ul class="list-group">
              <li class="list-group-item mt-4 btn-outline-danger px-auto shadow-lg fs-3 active" aria-current="true">Teacher Dashbroad</li>
              <li class="list-group-item mt-4 btn-outline-danger px-auto shadow-lg fs-3">Show Studetnt</li>
              <li class="list-group-item mt-4 btn-outline-danger px-auto shadow-lg fs-3">CourseNotes</li>
              <li class="list-group-item mt-4 btn-outline-danger px-auto shadow-lg fs-3">Course</li>
               <button type="button" class="list-group-item mt-4 btn-outline-danger px-auto shadow-lg fs-3 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"> Meeting
                </button>
                <ul class="dropdown-menu text-center fs-3">
                 
                  <li><hr class="dropdown-divider bg-info "></li>
                  <li><a class="dropdown-item" href="#">Teachers</a></li>
                 
                  <li><hr class="dropdown-divider bg-info "></li>
                  <li><a class="dropdown-item" href="#">Admin</a></li>
                 
                  <li><hr class="dropdown-divider bg-info "></li>
                  <li><a class="dropdown-item" href="#">Students</a></li>
                </ul>
              </div>
            </ul>
            <button class="list-group-item mt-4 btn-outline-danger px-auto shadow-lg fs-3 w-100" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
              Profile 
            </button>
            
            <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
              <div class="offcanvas-header ">
                <h5 class=" offcanvas-title" id="offcanvasExampleLabel">Teacher Profile</h5>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
              </div>
              <div class="offcanvas-body profileBackground">
                <div>
                 <div class="container-fluid">
                   <div class="row">
                     <div class="col-12">
                       <img src="resumePic.png" alt="" srcset="">
                     </div>
                   </div>
                <div class="container-fluid ">
                  <div class="row">
                    <div class="col text-info">
                    <label class="w-100 h-25 fs-5 text-info shadow-lg my-2  mx-auto" for="firstName">FirstName</label>
                    <label class="w-100 h-25 fs-5 text-info shadow-lg my-2  mx-auto" for="middleName">Middle</label>
                    <label class="w-100 h-25 fs-5 text-info shadow-lg my-2  mx-auto" for="lastNAme">lastName</label>
                    <label class="w-100 h-25 fs-5 text-info shadow-lg my-2  mx-auto" for="Email">Email</label>
                    <label class="w-100 h-25 fs-5 text-info shadow-lg my-2  mx-auto" for="number">Number</label>
                    <label class="w-100 h-25 fs-5 text-info shadow-lg my-2  mx-auto" for="City">City</label>
                    </div>
                    <div class="col text-info">
                      <label class=" my-2 w-100 h-25 fs-5 text-info alert-light mx-auto" for="firstName">FirstName</label>
                      <label class=" my-2 w-100 h-25 fs-5 text-info alert-light mx-auto" for="middleName">Middle</label>
                      <label class=" my-2 w-100 h-25 fs-5 text-info alert-light mx-auto" for="lastNAme">lastName</label>
                      <label class=" my-2 w-100 h-25 fs-5 text-info alert-light mx-auto" for="Email">Email</label>
                      <label class=" my-2 w-100 h-25 fs-5 text-info alert-light mx-auto" for="number">Number</label>
                      <label class=" my-2 w-100 h-25 fs-5 text-info alert-light mx-auto" for="City">City</label></div></div>
                </div>
                   

                 </div>
               
                </div>
              </div>
            </div>
          
            </div>
          
          <div class="col-md-9 ">
            <div class="backgroundTeacher h-50">
            <img alt=" hellose" src="/PowerOfEducation/StaticFile/image/studentEducation.webp">
            </div>
            <p class="text-center text-light m-3 fs-4">‘Your work is not to drag the world kicking and screaming into a new awareness. Your job is to simply do your work… sacredly, secretly, silently … and those with “eyes to see and ears to hear’ will respond.</p>
            <p class="badge badge alert-info fs-1">-The Arturians</p>
            </div>
              
          </div>
         
        </div>
      </div>
    </div>
    <!-- Menuitem ends -->
    <!-- Activites -->
    <section class="activity text-center ">
      <div class="container align-item-center activity  ">
        <div class="row">
          <div class="border w-25  d-flex justify-content-center pt-0  h-25 mx-auto border border-light  border-end-0 border-start-0 border-top-0 col-lg-12 col-md-6 col-sm-3">
            <p class=" fas fa-tasks  ">Activites</p>
        </div>
          
        </div>
      </div>
    </section>
   <section class="activitedTeacher ">
     <div class="container ">
       <div class="row">
         <div class="col-md-6">
          <div class="card mt-5 text-center">
            <div class="card-header">
              Notes
            </div>
            <div class="card-body">
              <h5 class="card-title">Special title treatment</h5>
              <div class="accordion accordion-flush" id="accordionFlushExample">
                <div class="accordion-item">
                  <h2 class="accordion-header" id="flush-headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne1" aria-expanded="false" aria-controls="flush-collapseOne">
                      Courses
                    </button>
                  </h2>
                  <div id="flush-collapseOne1" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">  <div class="col-md-8 offset-2">
                      <div class="container">
                        <div class="container text-center">
                          <h3 class="badge bd-dark text-info  my-5 fs-3 fw-blod">Add Course</h3>
                        </div>
            
                        <div class="container shadow-lg border p-5 text-center">
                          <form method="post" action="addCoursesByAdmin" class="row g-3">
                            <div class="col-6">
                              <input type="text" class="form-control" name="courseName" placeholder=" Course Name">
                            </div>
                            <div class="col-6">
                              <input type="text" class="form-control" name="courseDuration" placeholder=" Course Duration">
                            </div>
                            <div class="col-12">
                              <input type="text" class="form-control" name="courseLink" placeholder=" CourseLink">
                            </div>
                            <div class="col-12 ">
                              <div class="row">
                                <div class="col-5">
                                  <input type="submit" class="btn btn-outline-primary" value="Add Courses">
            
                                  </button>
                                </div>
                                <div class="col-5">
                                  <button class="accordion-button collapsed" id="coursesUpdate" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false"
                                    aria-controls="collapseOne">
                                    Update Course
                                  </button>
                                </div>
                                <div class="col-5">
                                  <button class="accordion-button collapsed" id="coursesDelete" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false"
                                    aria-controls="collapseOne">
                                    Delete Courses
                                  </button>
                                </div>
            
                                <div class="col-5">
                                  <button class="accordion-button collapsed" id="coursesShow" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#Three" aria-expanded="false" aria-controls="three">
            
                                    Show Courses
                                  </button>
                                </div>
                              </div>
                            </div>
            
                          </form>
                        </div>
                      </div>
                    </div>
                    <div class="accordion" id="accordionExample">
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="headingOne">
            
                        </h2>
                        <div id="collapseOne" class="accordion-collapse collapse " aria-labelledby="headingOne"
                          data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            <div class="col-md-8 offset-2">
                              <div class="container">
                                <div class="container text-center">
                                  <h3 class="badge bd-dark text-dark  my-5 fs-3 fw-blod">update Course</h3>
                                  <h3 class="text-success">${message}</h3>
                                </div>
            
                                <div class="container shadow-lg border p-5 text-center">
                                  <form action="updateCourse" method="post" class="row g-3">
            
                                    <select class="form-select" id="selectUpdateId" aria-label="Default select example">
                                      <option selected>Select ID for update</option>
                                      <option value="1" id="updateCourse" class="btn btn-outline-success"></option>
            
                                    </select>
            
                                    <div class="col-6">
                                      <input type="text" class="form-control" name="id" placeholder=" Course Id">
                                    </div>
                                    <div class="col-6">
                                      <input type="text" class="form-control" name="courseName" placeholder=" Course Name">
                                    </div>
                                    <div class="col-6">
                                      <input type="text" class="form-control" name="courseDuration" placeholder=" Course Duration">
                                    </div>
                                    <div class="col-12">
                                      <input type="text" class="form-control" name="courseLink" placeholder=" CourseLink">
                                    </div>
                                    <div class="col-12 ">
                                      <div class="row">
                                        <div class="col-4 ">
                                          <button type="submit" class="btn btn-outline-dark" data-bs-toggle="modal"
                                            data-bs-target="#staticBackdrop">
                                            <p> Upadte Courses</p>
                                          </button>
                                        </div>
            
                                      </div>
                                    </div>
            
                                  </form>
                                </div>
                              </div>
                            </div>
            
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="headingTwo">
            
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
                          data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            <div class="col-md-8 offset-2">
                              <div class="container">
                                <div class="container text-center">
                                  <h3 class="badge bd-dark text-danger  my-5 fs-3 fw-blod"> Delete to Student</h3>
                                  <h3 class="text-danger">${message1}</h3>
                                </div>
            
                                <div class="container shadow-lg border p-5 text-center">
                                  <form action="courseDelete" method="post" class="row g-3">
                                    <select class="form-select" id="deleteId" aria-label="Default select example">
                                      <option selected>Open this select menu</option>
                                      <option value="1" id="deleteData" class="btn btn-outline-danger"></option>
            
                                    </select>
                                    <div class="col-12">
                                      <input type="text" class="form-control" name="id" placeholder=" Courses id for delete">
                                    </div>
            
                                    <div class="row">
                                      <div class="col-4 ">
                                        <button type="submit" class="btn mt-3 btn-outline-danger">
                                          <p> Delete Courses</p>
                                        </button>
                                      </div>
            
                                    </div>
                                </div>
            
                                </form>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div id="Three" class="accordion-collapse collapse" aria-labelledby="three"
                          data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            <div class="col-md-8 offset-2">
                              <div class="container">
                                <div class="container text-center">
                                  <h3 class="badge bd-dark text-danger  my-5 fs-3 fw-blod">Show Courses</h3>
            
                                </div>
                                <table class="table  table-striped table-hover" id="courseData">
                                  <thead>
                                    <tr>
                                      <th scope="col">ID</th>
                                      <th scope="col">CourseName</th>
                                      <th scope="col">CourseDuration</th>
                                      <th scope="col">CourseLink</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <th id="courseId" scope="row"></th>
                                      <td id="courseName"></td>
                                      <td id="courseDuration"></td>
                                      <td id="courseLink"></td>
                                    </tr>
                                  </tbody>
                                </table>
            
            
                                </form>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
            
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="flush-headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo1" aria-expanded="false" aria-controls="flush-collapseTwo">
                      Accordion Item #2
                    </button>
                  </h2>
                  <div id="flush-collapseTwo1" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="flush-headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree1" aria-expanded="false" aria-controls="flush-collapseThree">
                      Accordion Item #3
                    </button>
                  </h2>
                  <div id="flush-collapseThree1" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.</div>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-footer text-muted">
              2 days ago
            </div>
          </div>
           
         </div>
         <div class="col-md-6">
          <div class="card mt-5 text-center">
            <div class="card-header">
              meeting
            </div>
            <div class="card-body">
              <h5 class="card-title">Special title treatment</h5>
              <div class="accordion accordion-flush" id="accordionFlushExample">
                <div class="accordion-item">
                  <h2 class="accordion-header" id="flush-headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                      Accordion Item #1
                    </button>
                  </h2>
                  <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the first item's accordion body.</div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="flush-headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                      Accordion Item #2
                    </button>
                  </h2>
                  <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="flush-headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                      Accordion Item #3
                    </button>
                  </h2>
                  <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.</div>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-footer text-muted">
              2 days ago
            </div>
          </div>
         </div>
       </div>
     </div>
   </section>
    <!-- Activites end -->
  

<%@include file="/WEB-INF/view/Fotter.jsp" %>
<!-- Footer -->
    
    
    <!-- Optional JavaScript; choose one of the tmwo! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
  </body>
</html></html>