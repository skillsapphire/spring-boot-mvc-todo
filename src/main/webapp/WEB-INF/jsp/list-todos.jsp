
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<!--Downloaded address for Bootstrap through Maven Dependencies-->


<!-- <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"> background color not working properly -->

<style>
#height {
min-height : 100vh;
}

</style>
<title>Todo's for ${Name}</title>
</head>
<body>

	<div id="height" class="container-fluid bg-secondary">
		<h1 class="text-capitalize text-center text-white"> ${Name}'s todos :</h1>
		<table class="table table-striped bg-white">
			<caption>Your todos are</caption>
			<thead>
				<tr>
					<th scope="col">#</th>
					<th>Description</th>
					<th>Target Date</th>
					<th>Is it Done?</th>
					<th>Update</th>
					<th>Delete</th>
					
				</tr>
			</thead>
			<tbody>

				<!--for (Item item:todos): used in JAVA-->
				<!-- JSTL For Loop -->
				<c:forEach items="${todos}" var="todo">
					<tr>
						<th scope="row">${todo.id}</th>
						<td>${todo.desc}</td>
						<!-- todo.desc is same as todo.getDesc, works as Get method -->
						<td>${todo.targetDate}</td>
						<td>${todo.done}</td>
						<td><a href="/update-todo?id=${todo.id}" class="btn btn-outline-success text-dark">Update</a></td>
						<td><a href="/delete-todo?id=${todo.id}" type="button" class="btn btn-outline-info text-dark">Delete</a></td>
						
					</tr>
				</c:forEach>

			</tbody>
		</table>
		<%-- <p class=" text-center text-white">Here are the list of ${Name}'s Todos : ${todos}</p> --%>
		
		<div><a href="/add-todo" class="btn btn-info btn-lg w-25 pb-2 text-center my-3">Add Todo</a></div>
			
	</div>

<!-- <!-- Downloaded address for Bootstrap through Maven Dependencies -->

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>



</body>
</html>