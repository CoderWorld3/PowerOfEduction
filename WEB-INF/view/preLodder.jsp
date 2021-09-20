<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
 <style>
     .fullBlack{
  padding: 0;
  margin: 0;
  background-color: #000;
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100vh

}
h1{
  color: #484848;
  font-size: 40px;
  font-weight: bold;
  font-family: monospace;
  letter-spacing: 7px;
  cursor: pointer
}
h1 span{
  transition: .5s linear
}
h1:hover span:nth-child(1){
  margin-right: 5px
}
h1:hover span:nth-child(1):after{
  content: "'";
}
h1:hover span:nth-child(2){
  margin-left: 30px
}
h1:hover span{
  color: #fff;
  text-shadow: 0 0 10px #fff,
               0 0 20px #fff, 
               0 0 40px #fff;
}
/*made with ❤, by qpi65*/
 </style>
    <title>Hello, world!</title>
  </head>
  <body >
    <div class="fullBlack">
    <h1 id="preLodder"><span>EveryThing</span>IS<span>POSSIBLE</span> <span>- <q> H.S Mishra</q></span></h1>
    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
    <script>
        window.onload=function(){
            setTimeout(function(){
                var preLodder =document.getElementById("preLodder");
                var  div = document.getElementsByClassName("fullBlack")[0];
                div.classList.remove("fullBlack");
                preLodder.style.display="none";
            },8000)
        }
    </script>
  </body>
</html>