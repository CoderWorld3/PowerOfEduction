<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
 <style>
     html,body{
         height: 100%;
     }
   
 </style>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

 
  </head>
  <body>
<!--header  -->

    <%@include file="/WEB-INF/view/Header.jsp" %>
    <!-- header end -->
    <div class="container-fluid">
     <a href="/PowerOfEducation/Admin/AdminPanel" class="btn btn-sm btn-outline-info"> Back AdminPanel</a>
    </div>
      <div class="col-md-8 offset-2">
    <div class="container">
        <div class="container text-center">
            <h3 class="badge bd-dark text-info  my-5 fs-3 fw-blod">Add  new Admin </h3>
          </div>
       
          <div class="container shadow-lg border p-5 text-center">
            <form class="row g-3">
               <div class="col-8 offset-2 mx-auto text-center">
                <form:form  method="POST" modelAttribute="adminData" >
                    <fieldset>
                    <table>
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
                <br/>
                       <input class="form-control btn-outline-primary"  value=" Add  new Admin"type="submit"/>
                        
                        
                        
                        
                      </fieldset>
                  </table>
                  
                  
                  </form:form>
               </div>
                  <div class="col-12 ">
                    <div class="row">
                 <div class="col-3">
                  </div>
                  <div class="col-3">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                      Update Admin 
                    </button>
                    </div>
                    <div class="col-3">
                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                       
                        Delete Admin 
                      </button>
                      </div> 
                      <div class="col-3">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#Three" aria-expanded="false" aria-controls="three">
                         
                          Show Admin s
                        </button>
                        </div> 
                    </div>
                  </div>
                      
              </form>
          </div>
      </div>
      </div>
      <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        sure!!!!! 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-outline-primary">Save to Database</button>
      </div>
    </div>
  </div>
</div>
<!-- According -->
<div class="accordion" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">

    </h2>
    <div id="collapseOne" class="accordion-collapse bg-dark text-light collapse " aria-labelledby="headingOne" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <div class="col-md-8 offset-2">
          <div class="container">
              <div class="container text-center">
                  <h3 class="badge bd-dark text-dark  my-5 fs-3 fw-blod">update Admin </h3>
                </div>
             
                <div class="col-8 offset-2 mx-auto text-center">
                    <form:form  method="POST" modelAttribute="adminData" >
                        <fieldset>
                        <table>
                           <select class="form-select" aria-label="Default select example">
                          <option selected>Open this select menu</option>
                          <option value="1">One</option>
                          <option value="2">Two</option>
                          <option value="3">Three</option>
                        </select>
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
                  
                           <input class="form-control btn-outline-primary"  value=" update Admin"type="submit"/>
                            
                            
                            
                            
                          </fieldset>
                      </table>
                      
                      
                      </form:form>
                   </div>
            </div>
            </div>
       
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingTwo">
    
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <div class="col-md-8 offset-2">
          <div class="container">
              <div class="container text-center">
                  <h3 class="badge bd-dark text-danger  my-5 fs-3 fw-blod">Add Delete</h3>
                </div>
             
                <div class="container shadow-lg border p-5 text-center">
                  <form class="row g-3">
                    <select class="form-select" aria-label="Default select example">
                      <option selected>Open this select menu</option>
                      <option value="1">One</option>
                      <option value="2">Two</option>
                      <option value="3">Three</option>
                    </select>
                    <div class="col-12">
                        <input type="text" class="form-control" id="inputAdmin s" placeholder=" Admin s id for delete">
                      </div>
                     
                          <div class="row">
                       <div class="col-4 ">
                        <button type="button" class="btn mt-3 btn-outline-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                          <p > Delete Admin s</p>
                        </button>
                        </div>
                    
                          </div>
                        </div>
                            
                    </form>
                </div>
            </div>
            </div>
       </div>
       <div id="Three" class="accordion-collapse collapse" aria-labelledby="three" data-bs-parent="#accordionExample">
        <div class="accordion-body">
          <div class="col-md-8 offset-2">
            <div class="container">
                <div class="container text-center">
                    <h3 class="badge bd-dark text-danger  my-5 fs-3 fw-blod">Show Admin s</h3>
                  </div>
                  <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">First</th>
                        <th scope="col">Last</th>
                        <th scope="col">Handle</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                      </tr>
                      <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td colspan="2">Larry the Bird</td>
                        <td>@twitter</td>
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

<!--fotter  -->
  
    <%@include file="/WEB-INF/view/Fotter.jsp" %>
  <!-- footer -->
<!-- accoring end -->

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