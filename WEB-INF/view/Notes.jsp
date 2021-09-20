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
              <h3 class="badge bd-dark text-info  my-5 fs-3 fw-blod">Add Notes</h3>
            </div>
            <div class="container">
              <div class="container col-md-10 offset-1 shadow-lg">
                <form action="notesFile" method="POST" enctype="multipart/form-data">
                  <div class="input-group  mt-3 mb-3">
                    <button class="btn btn-outline-secondary" type="button" id="button-addon1"> Notes.pdf</button>
                    <input type="file" class="form-control" name="profile" />
                  </div>
                  <input type="submit" value="sumbit your Pdf">
                </form>

              </div>
             
            </div>
            <!--  -->

            <div class="container shadow-lg border p-5 text-center">

              <form method="post" action="saveNotes" class="row g-3">
                <div class="col-6">
                  <input type="text" class="form-control" name="no_title" placeholder=" Notes Name" readonly value="${notes}">
                </div>
                <div class="col-6">
                  <input type="text" class="form-control" name="no_subject" placeholder=" Notes Subject">
                </div>
                <div class="col-12">
                  <input type="text" class="form-control" name="no_name" placeholder=" For whom">
                </div>
                <div class="col-12 ">
                  <div class="row">
                    <div class="col-3">
                      <input type="submit" class="btn btn-outline-primary" value="Add Notess">

                      </button>
                    </div>
                    <div class="col-3">
                      <button class="accordion-button collapsed" id="NotesUpdate" type="button"
                        data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false"
                        aria-controls="collapseOne">
                        Update Notes
                      </button>
                    </div>
                    <div class="col-3">
                      <button class="accordion-button collapsed" id="NotesDelete" type="button"
                        data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false"
                        aria-controls="collapseOne">
                        Delete Notess
                      </button>
                    </div>

                    <div class="col-3">
                      <button class="accordion-button collapsed" id="NotesShow" type="button"
                        data-bs-toggle="collapse" data-bs-target="#Three" aria-expanded="false" aria-controls="three">

                        Show Notess
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
                      <h3 class="badge bd-dark text-dark  my-5 fs-3 fw-blod">update Notes</h3>
                      <h3 class="text-success">${message}</h3>
                    </div>

                    <div class="container shadow-lg border p-5 text-center">
                      <form action="updateNotes" method="post" class="row g-3">

                        <select class="form-select" id="notesId" aria-label="Default select example">
                          <option selected>Select ID for update</option>
                          <option value="1" id="updateNotes" class="btn btn-outline-success"></option>

                        </select>

                        <div class="col-6">
                          <input type="text" class="form-control" name="id" placeholder=" Notes Id">
                        </div>
                        <div class="col-6">
                          <input type="text" class="form-control" name="NotesName" placeholder=" Notes Name">
                        </div>
                        <div class="col-6">
                          <input type="text" class="form-control" name="NotesDuration" placeholder=" Notes Duration">
                        </div>
                        <div class="col-12">
                          <input type="text" class="form-control" name="NotesLink" placeholder=" NotesLink">
                        </div>
                        <div class="col-12 ">
                          <div class="row">
                            <div class="col-4 ">
                              <button type="submit" class="btn btn-outline-dark" data-bs-toggle="modal"
                                data-bs-target="#staticBackdrop">
                                <p> Upadte Notess</p>
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
                      <form action="NotesDelete" method="post" class="row g-3">
                        <select class="form-select" id="notesDeleteData" aria-label="Default select example">
                          <option selected>Open this select Id</option>
                          <option value="1"  class="btn btn-outline-danger"></option>

                        </select>
                        <div class="col-12">
                          <input type="text" class="form-control" name="id" placeholder=" Notess id for delete">
                        </div>

                        <div class="row">
                          <div class="col-4 ">
                            <button type="submit" class="btn mt-3 btn-outline-danger">
                              <p> Delete Notess</p>
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
                      <h3 class="badge bd-dark text-danger  my-5 fs-3 fw-blod">Show Notess</h3>

                    </div>
                    <table class="table  table-striped table-hover" id="NotesData">
                      <thead>
                        <tr>
                          <th scope="col">ID</th>
                          <th scope="col">NotesName</th>
                          <th scope="col">NotesDuration</th>
                          <th scope="col">NotesLink</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th id="NotesId" scope="row"></th>
                          <td id="NotesName"></td>
                          <td id="NotesDuration"></td>
                          <td id="NotesLink"></td>
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

          <script src="/PowerOfEducation/StaticFile/js/AddNotes.js"></script>

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