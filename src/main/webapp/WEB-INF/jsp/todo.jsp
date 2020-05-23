<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> <!-- For Spring Form Tags -->

<html>

<head>
<!--CDN for Bootstrap-->

<!--  Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

 <!--Downloaded address for Bootstrap through Maven Dependencies-->


<!-- <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"> -->

<style>
.height {
min-height : 100vh;
}

.bold {
font-weight : bold;
}

</style>
<title>Add Todo Page</title>

</head>

<body>
<div class="container-fluid bg-info text-white">
<p class="text-capitalize text-center bold"> Hello ${Name} proceed to add your todos </p>

<form:form method="post" modelAttribute="todo">
<div class="form-group height">
<form:label path="desc" for="description" class="mb-2 bold"> Description : </form:label> 
<form:textarea class="form-control" id="description" path="desc" rows="1" placeholder="Enter Description.." required="required"></form:textarea>
<div><form:errors path="desc" Class="text-warning"></form:errors> <!-- to display the desc field error --></div>
<button type="submit" class="btn btn-success text-white w-25 my-2">Submit</button>
</div>
</form:form>

</div>

<!-- Downloaded address for Bootstrap through Maven Dependencies -->

<!-- <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->

</body>

</html>