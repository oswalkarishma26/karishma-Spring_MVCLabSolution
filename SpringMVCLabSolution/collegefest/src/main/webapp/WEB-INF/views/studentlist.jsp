<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Greatlearning CollegeFest</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>

<Style>
body {
	background-color: offwhite
}

h1 {
	text-align: center;
	color: wheat;
}

p {
	text-align: center;
	color: white;
}

.tablestyle {
	text-align: center;
}
</Style>
<body>
	<div class="container-fluid p-3 my-3 bg-dark text-white">
		<h1>Welcome to CollegeFest Registrations</h1>
		<p class="container bg-info text-white">Be all that you can be!</p>
  		<p class="container bg-info text-white">Come celebrate with us during this joyous time of year</p>
	</div>
	<button type="button" class="btn btn-outline-info"><a href="studentslist">Students-List</a></button>
	 <button type="button" class="btn btn-outline-info"><a href = "showStudentAddForm">Add-Participants</a></button>

	<div class="container">
		<h2 class="tablestyle">Participants Data</h2>
		<p></p>
		<table class="table table-primary table-striped">
			<thead class="thead-info">
				<tr>
					<th>S.No</th>
					<th>Name</th>
					<th>Department</th>
					<th>Country</th>
					<th>Action</th>
				</tr>
			</thead>
			<c:forEach var="student" items="${students}" varStatus="c">
				<tbody>
					<tr>
						<td>${c.count}</td>
						<td>${student.studentName}</td>
						<td>${student.department}</td>
						<td>${student.country}</td>
						<td><a class = "btn btn-warning" href ="edit?id=${student.studentId}">Edit</a><a class = "btn btn-danger" href ="delete?id=${student.studentId}">Delete</a></td>
				</tbody>
			</c:forEach>


		</table>
	</div>


</body>
</html>