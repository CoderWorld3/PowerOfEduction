<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

    <%@ page isELIgnored = "false" %>

    <!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/PowerOfEducation/StaticFile/css/Student_deshBorad.css">
  <!-- fontAwsome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

  </head>
  <body >
  
    <%@include file="/WEB-INF/view/Header.jsp" %>
  
  
      <div class="col-12 text-center mb-3  alert-info">
          Welcome to Us We Here For give you what should you need about your game
      </div>
   
      <div class="container col-md-10 offset-1">
        <div class="row m-auto">
        <div class="col-md-6  mt-5">
          <div class="col-md-6  mx-auto mt-5 shadow-lg w-100 ">
            <div class="col-4 mx-auto shadow-lg p-3 mb-5 bg-body rounded">
              <button class="btn w-100 btn-outline-secondary text-center border-0 collapsed" id="courseRequest" type="button"
                data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false"
                aria-controls="collapseOne">
                Request For Course
              </button>
            </div>
            
            <div class="col-4 mx-auto shadow-lg p-3 mb-5 bg-body rounded">
              <button class="btn btn-outline-secondary text-center border-0 collapsed" id="notesId" type="button"
                data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false"
                aria-controls="collapseOne">
                Request for notes
              </button>
            </div>
              <div class="col-4 mx-auto shadow-lg p-3 mb-5 bg-body rounded">
              <button class="btn btn-outline-secondary text-center border-0 w-100 btn-outline-primary collapsed" id="#appoinmentId" type="button"
                data-bs-toggle="collapse" data-bs-target="#collapsethree" aria-expanded="false"
                aria-controls="collapseOne">
                Request for Appointment
              </button>
            </div>
            <div class="col-4 mx-auto shadow-lg p-3 mb-5 bg-body rounded">
              <button class="btn btn-outline-secondary text-center border-0 collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" onclick="showStudentApproved()" aria-controls="flush-collapseTwo">
                Approad for courses
              </button>
            </div>
            <div class="col-4 mx-auto shadow-lg p-3 mb-5 bg-body rounded">
              <button class="btn btn-outline-secondary text-center border-0 collapsed" onclick="showNoteApproved()" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                Approad for notes 
              </button>
            </div>
            <div class="col-4 mx-auto shadow-lg p-3 mb-5 bg-body rounded">
              <button class="btn btn-outline-secondary text-center  border-0 collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                Approad for appointment
              </button>
            </div>
            <div class="col-4">
              <div class="col-4">
                <button class="btn btn-primary border-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop">Profile</button>
  
              </div>
            </div>
          
  
           
            
            
            
        </div>
          </div>
          <div class="col-md-6">
      
       
            
        
   
   
  
      <div class="border w-25  mt-auto d-flex justify-content-center pt-0  h-25 mx-auto border border-light  border-end-0 border-start-0 border-top-0 col-lg-12 col-md-6 col-sm-3">
          <p class=" fas fa-tasks m-auto ">Activites</p>
      </div>
     <!-- According -->
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
                  <h3 class="badge bd-dark text-dark  my-5 fs-3 fw-blod">Request For Course</h3>
                  <h3 class="text-success">${message}</h3>
                </div>
                  <select class="form-select"   id="courseDataId"   aria-label="Default select example">
                      <option selected >CourseId</option>
                      <option value="1" class="btn btn-outline-success"></option>

                    </select>

                <div class="container shadow-lg border p-5 text-center">
                  <form action="requestForCourses" method="post" class="row g-3">

                   

                    <div class="col-6">
                      <input type="text" class="form-control" name="Re_to" placeholder="Request to">
                    </div>  <div class="col-6">
                    
    <c:forEach var = "i" items="${St_de}">
                      <input type="text" class="form-control" name="St_id" readonly value="${i.id}" placeholder="Request to">
     </c:forEach>               </div>
                   
                    
                    <div class="col-12 ">
                      <div class="row">
                        <div class="col-4 ">
                          <button type="submit" class="btn btn-outline-dark" 
                            data-bs-target="#staticBackdrop">
                            <p> Request For courses</p>
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
                  <h3 class="badge bd-dark text-dark  my-5 fs-3 fw-blod">Request for notes</h3>
                  <h3 class="text-success">${message}</h3>
                </div>

                <div class="container shadow-lg border p-5 text-center">
                  <form action="requestNote" method="post" class="row g-3">

                    <select class="form-select" id="notesDataId" aria-label="Default select example">
                      <option selected>Notes ID </option>
                      <option value="1"  class="btn btn-outline-success"></option>

                    </select>
                    <div class="col-md-6">
                      <input type="text" class="form-control" name="Re_to" placeholder=" Course Duration">
                   <c:forEach var = "i" items="${St_de}">
                      <input type="text" class="form-control" name="St_id" readonly value="${i.id}" placeholder="Request to">
     </c:forEach> 
                    </div>
                    
                    
                    <div class="col-12 ">
                      <div class="row">
                        <div class="col-4 ">
                          <button type="submit" class="btn btn-outline-dark" data-bs-toggle="modal"
                            data-bs-target="#staticBackdrop">
                            <p> Request For notes</p>
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
        
        
        
        <div class="accordion-item">
        <h2 class="accordion-header" id="headingThree">

        </h2>
        <div id="collapsethree" class="accordion-collapse collapse" aria-labelledby="headingTwo"
          data-bs-parent="#accordionExample">
          <div class="accordion-body">
            <div class="col-md-8 offset-2">
              <div class="container">
                <div class="container text-center">
                  <h3 class="badge bd-dark text-dark  my-5 fs-3 fw-blod">Request for Appoinment</h3>
                  <h3 class="text-success">${message}</h3>
                </div>

                <div class="container shadow-lg border p-5 text-center">
                  <form action="requestNote" method="post" class="row g-3">

                   
                    <div class="col-md-6">
                      <input type="text" class="form-control" name="Re_to" placeholder=" forWhat">
                   <c:forEach var = "i" items="${St_de}">
                      <input type="text" class="form-control" name="St_id" readonly value="${i.id}" placeholder="Request to">
     </c:forEach> 
                    </div>
                    
                    
                    <div class="col-12 ">
                      <div class="row">
                        <div class="col-4 ">
                          <button type="submit" class="btn btn-outline-dark" data-bs-toggle="modal"
                            data-bs-target="#staticBackdrop">
                            <p> Request For appointment</p>
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
        <div class="offcanvas offcanvas-top h-100 bg-dark text-center text-light" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
          <div class="offcanvas-header">
            <h5 id="offcanvasTopLabel"></h5>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
          </div>
         <div class="card text-center" style="width: 100%;">
               <c:forEach var = "i" items="${St_de}">
                  
                <img src="<c:url value="/StaticFile/images/${i.image}"/>" class="card-img-top" Style="width:50%; height:50vh;" alt="${student.image}"/> 
  <div class="card-body">
    <h5 class="card-title">${i.firstName}</h5>
    
  <ul class="list-group w-100 list-group-flush">
    <li class="list-group-item">${i.userName }</li>
    <li class="list-group-item">${i.email }</li>
    <li class="list-group-item">${i.phone }</li>
  </ul>

</div>
        </div>
      </div>
    </div>
    
</c:forEach>

    </div>
    </div>
    </div>

      
      <!-- Approval for activites -->
     <div class="container">
       <div class="row">
         <div class="col-md-12 ">
          <div class="accordion accordion-flush" id="accordionFlushExample">
            <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingOne">
              
              </h2>
              <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                  <div class="container">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="accordion-body" id="cardItem1" >
                          <div class="card" style="width: 30rem;" >
                            <div class="card-body" >
                              <h5 class="card-title " id="SandCId1"></h5>
                              <h5 class="card-title " id="SandCNoteId1"></h5>
                              <h6 class="card-subtitle mb-2 text-muted" id="SandCSt_id1"></h6>
                              <h1 id=SandCCo_Id></h1>
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
             
              </h2>
              <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                <div class="container">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="accordion-body" id="cardItem" >
                        <div class="card" style="width: 30rem;" id="cardDiv" >
                          <div class="card-body" >
                            <h5 class="card-title " id="SandCId"></h5>
                            <h6 class="card-subtitle mb-2 text-muted" id="SandCSt_id"></h6>
                            <h1 id=SandCCo_Id></h1>
                          </div>
                        </div>
      
      
      
                      </div>

                    </div>
                  </div>
                </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingThree">
            
              </h2>
              <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">  </div>
            </div>
          </div>
         </div>
       </div>
     </div>
    </div>
  </div>
    
  <!-- Footer -->
  
    <%@include file="/WEB-INF/view/Fotter.jsp" %>

<!-- Footer -->

<script src="/PowerOfEducation/StaticFile/js/Student_deshBroad.js"></script>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>
    -->
 
    </script>
  </body>
</html>