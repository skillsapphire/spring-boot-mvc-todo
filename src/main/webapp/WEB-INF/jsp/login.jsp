<html>
<head>
<title>First Web Application</title>

<style>
#height {
min-height : 100vh;
}

#height1 {
min-height : 50vh;
}

.bold {
font-weight : bold;
}

</style>

<!--CDN for Bootstrap-->

<!--  Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">


</head>
<body>

<div id="height" class="container-fluid bg-secondary">

<div id="height1" class="col mx-auto bg-info">

<h1 class="text-center">Todo Application!!!</h1>

<font color="red">${errorMessage}</font>

<form method="post">
  <div class="form-group">
  <div>
    <label for="Username" class="bold">Username : </label>
    <input type="text" class="form-control" id="Username" name="name" aria-describedby="userHelp" placeholder="Enter Username..">
    <small id="userHelp" class="form-text 	text-white">We'll never share your Credentials with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="userPassword" class="bold">Password : </label>
    <input type="password" class="form-control" id="userPassword" name="password" placeholder="Enter Password..">
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1" required="required">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-success text-white btn-lg my-2">Submit</button>
</form>



<!-- <form method="post">
<label>Name:</label>
<input type="text" name="name" placeholder="Enter name.."/>
<label>Password:</label>
<input type="password" name="password" placeholder="Enter Password..">
<input type="submit" />

</form> -->

</div>

</div>



</body>
</html>