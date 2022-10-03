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
  		<p class="container bg-info text-white">Come celebrate with us during this joyous time of year</p>	</div>
	<button type="button" class="btn btn-outline-info"><a href="studentslist">Students-List</a>	</button>
	 <button type="button" class="btn btn-outline-info"><a href = "showStudentAddForm">Add-Participants</a></button>
	<div class="container">
		<p></p>
		<h4 style="">Fest Registration Form</h4>

		<form action="save" method="post">
			<div class="form-group">
				<input type="hidden" class="form-control" placeholder="Enter ID"
					name="studentId" value="${student.studentId}">
			</div>
			<div class="form-group">
				<input type="text" class="form-control"
					placeholder="Enter Name" name="studentName"
					value="${student.studentName}">
			</div>
			<div class="form-group">
				<input type="text" class="form-control"
					placeholder="Enter Department" name="department"
					value="${student.department}">
			</div>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Enter Country"
					name="country" value="${student.country}">
			</div>
			<button type="submit" class="btn btn-outline-warning btn-lg"
				class=" btn btn-primary">Save</button>
		</form>
	</div>


</body>
</html>