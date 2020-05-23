<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>

<html>
<head>

<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">


<title>Welcome Page</title>
</head>
<body>
<div class="container-fluid">
	<h1 class="text-white bg-info text-center">Welcome ${Name}!!</h1>
</div>
	<%-- <c:forEach var="name" items="${names }">
         <div>Name <c:out value="${name}" />
		<p>
	</c:forEach> --%>

	<%-- <h3>${message}!!</h3> --%>

	<h3 class="text-center text-capitalize">
		<a href="/list-todos" class="btn btn-outline-info btn-lg"> Click here </a> to manage your Todos
	</h3>


</body>
</html>