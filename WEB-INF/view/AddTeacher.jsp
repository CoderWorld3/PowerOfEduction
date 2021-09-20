<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ page isELIgnored="false" %>
    <!doctype html>
    <html lang="en">

    <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <style>
        html,
        body {
          height: 100%;
        }
      </style>
      <!-- Bootstrap CSS -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


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
              <h3 class="badge bd-dark text-info  my-5 fs-3 fw-blod">Add Course</h3>
            </div>

            <div class="container shadow-lg border p-5 text-center">
              <form action="addTeacherData" method="post" class="row g-3">

                <div class="col-6">
                  <input name="firstName" type="text" class="form-control" id="inputTeacher"
                    placeholder=" Teacher Name">
                </div>
                <div class="col-6">
                  <input name="middleName" type="text" class="form-control" id="inputTeacher"
                    placeholder=" Teacher middle Name">
                </div>
                <div class="col-6">
                  <input name="lastName" type="text" class="form-control" id="inputTeacher"
                    placeholder=" Teacher Last Name">
                </div>
                <div class="col-6">
                  <input name="phone" type="cell" class="form-control" id="inputTeacher"
                    placeholder=" Teacher  Phone Number">
                </div>
                <div class="col-md-6">
                  <input name="email" type="email" class="form-control" placeholder="Email" id="">
                </div>
                <div class="col-md-6">
                  <input name="password" type="password" placeholder="Password" class="form-control">
                </div>
                <div class="col-md-6">
                  <textarea name="address" placeholder="addresh" id="address" rows="2" cols="40"></textarea>
                </div>


                <div class="col-md-6">
                  <input name="age" type="number" placeholder="DOb" class="form-control" />
                </div>



                <div class="col-md-6">
                  <input type="text" name="userName" placeholder="userName" class="form-control" />
                </div>

                <div class="col-md-6 d-flex">
                  <div class="col-6">
                    <label for="Male">Male</label>
                    <input type="radio" id="gender" name="gender" value="m">
                  </div>
                  <div class="col-6">

                    <label for="Male">feMale</label>
                    <input type="radio" name="gender" id="gender" value="f">
                  </div>
                </div>

                <div class="col-md-6">
                  <input type="text" name="subject" placeholder="SubjectName" class="form-control" />
                </div>
                <div class="col-12 ">
                  <div class="row">
                    <div class="col-3 ">
                      <button type="submit" class="btn btn-outline-primary" data-bs-toggle="modal"
                        data-bs-target="#staticBackdrop">
                        <p> Add Teachers</p>
                      </button>
                    </div>


                    <div class="col-3">
                      <button class="accordion-button collapsed" id="coursesUpdate" type="button"
                        data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false"
                        aria-controls="collapseOne">
                        Update Teacher
                      </button>
                    </div>
                    <div class="col-3">
                      <button class="accordion-button collapsed" id="coursesDelete" type="button"
                        data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false"
                        aria-controls="collapseOne">
                        Delete Teacher
                      </button>
                    </div>

                    <div class="col-3">
                      <button class="accordion-button collapsed" id="coursesShow" type="button"
                        data-bs-toggle="collapse" data-bs-target="#Three" aria-expanded="false" aria-controls="three">

                        Show Teacher
                      </button>
                    </div>
                  </div>
                </div>

              </form>
            </div>
          </div>
        </div>
        <!-- Button trigger modal -->



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
                      <h3 class="badge bd-dark text-dark  my-5 fs-3 fw-blod">update Teacher</h3>
                      <h3 class="text-success">${teacherUpdateMessage}</h3>
                    </div>

                    <div class="container shadow-lg border p-5 text-center">
                      <form action="updateTeacher" method="post" class="row g-3">

                        <select class="form-select" id="selectUpdateId" aria-label="Default select example">
                          <option selected>Select ID for update</option>
                          <option value="1" id="updateCourse" class="btn btn-outline-success"></option>

                        </select>

                        <div class="col-6">
                          <input name="firstName" type="text" class="form-control" id="inputTeacher"
                            placeholder=" Teacher Name">
                        </div>
                        <div class="col-6">
                          <input name="middleName" type="text" class="form-control" id="inputTeacher"
                            placeholder=" Teacher middle Name">
                        </div>
                        <div class="col-6">
                          <input name="lastName" type="text" class="form-control" id="inputTeacher"
                            placeholder=" Teacher Last Name">
                        </div>
                        <div class="col-6">
                          <input name="phone" type="cell" class="form-control" id="inputTeacher"
                            placeholder=" Teacher  Phone Number">
                        </div>
                        <div class="col-md-6">
                          <input name="email" type="email" class="form-control" placeholder="Email" id="">
                        </div>
                        <div class="col-md-6">
                          <input name="password" type="password" placeholder="Password" class="form-control">
                        </div>
                        <div class="col-md-6">
                          <textarea name="address" placeholder="addresh" id="address" rows="2" cols="40"></textarea>
                        </div>


                        <div class="col-md-6">
                          <input name="age" type="number" placeholder="DOb" class="form-control" />
                        </div>



                        <div class="col-md-6">
                          <input type="text" name="userName" placeholder="userName" class="form-control" />
                        </div>

                        <div class="col-md-6 d-flex">
                          <div class="col-6">
                            <label for="Male">Male</label>
                            <input type="radio" id="gender" name="gender" value="m">
                          </div>
                          <div class="col-6">

                            <label for="Male">feMale</label>
                            <input type="radio" name="gender" id="gender" value="f">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <input type="text" name="subject" placeholder="SubjectName" class="form-control" />
                        </div>
                        <div class="col-12 ">
                          <div class="row">
                            <div class="col-4 ">
                              <button type="submit" class="btn btn-outline-dark" data-bs-toggle="modal"
                                data-bs-target="#staticBackdrop">
                                <p> Upadte Teacher</p>
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
                      <h3 class="badge bd-dark text-danger  my-5 fs-3 fw-blod"> Delete to Teacher</h3>
                      <h3 class="text-danger">${teacherMessage}</h3>
                    </div>

                    <div class="container shadow-lg border p-5 text-center">
                      <form action="deleteTeacherId" method="post" class="row g-3">
                        <select class="form-select" id="deleteId" aria-label="Default select example">
                          <option selected>Open this select menu</option>
                          <option value="1" id="deleteData" class="btn btn-outline-danger"></option>

                        </select>
                        <div class="col-12">
                          <input type="text" class="form-control" name="id" placeholder=" Teacher id for delete">
                        </div>

                        <div class="row">
                          <div class="col-4 ">
                            <button type="submit" class="btn mt-3 btn-outline-danger">
                              <p> Delete Teacher</p>
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
                      <h3 class="badge bd-dark text-danger  my-5 fs-3 fw-blod">Show Teacher</h3>

                    </div>
                    <table class="table  table-striped table-hover" id="courseData">
                      <thead>
                        <tr>
                          <th scope="col">ID</th>
                          <th scope="col">TeacherName</th>
                          <th scope="col">UserName</th>
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

        <!--fotter  -->

        <%@include file="/WEB-INF/view/Fotter.jsp" %>
          <!-- footer -->
          <!-- accoring end -->

          <!-- Optional JavaScript; choose one of the two! -->

          <script src="/PowerOfEducation/StaticFile/js/addTeacher.js"></script>

          <!-- Option 1: Bootstrap Bundle with Popper -->
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>

          <!-- Option 2: Separate Popper and Bootstrap JS -->
          <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
    </body>

    </html>