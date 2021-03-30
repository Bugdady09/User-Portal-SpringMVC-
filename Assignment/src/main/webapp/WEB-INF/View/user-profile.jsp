<%@page import="com.jonayed.Model.UserRegistratrion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	session = request.getSession();
	UserRegistratrion user = (UserRegistratrion) session.getAttribute("userDetails");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>User Profile</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

</head>


<body>

	<nav class="navbar navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Navigation</a>
			</div>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-bs-toggle="dropdown" aria-expanded="false">User
					Name</a>
				<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					<li><a href="changepass">Change Password</a></li>
					<li><a href="logout">Logout</a></li>
				</ul></li>

		</div>
	</nav>


	<div class="container m-5">
		<div class="row">
			<div class="col-3 border-end border-dark">
				<ul class="list-group">
					<li class="list-group-item"><a href="profile">Profile Page</a></li>
					<li class="list-group-item"><a href="changepass">Change
							Password</a></li>
				</ul>
			</div>
			<div class="col-9">
				<h3 align="center">User Profile</h3>

				<div class="m-5">
					<p class="lead">
						First Name: <b class="mx-5 "><%=user.getFirstName()%></b>
					</p>
					<p class="lead">
						Last Name: <b class="mx-5"><%=user.getLastName()%></b>
					</p>
					<p class="lead">
						Address: <b class="mx-5"><%=user.getAddress()%></b>
					</p>
					<p class="lead">
						Phone: <b class="mx-5"><%=user.getPhone()%></b>
					</p>
					<p class="lead">
						Email: <b class="mx-5"><%=user.getEmai1()%></b>
					</p>
					<p class="lead">
						Birthdate: <b class="mx-5"><%=user.getBirthdate()%></b>
					</p>
				</div>

			</div>

		</div>
	</div>



	<!-- footer -->
	<nav class="navbar navbar-dark bg-dark fixed-bottom">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#"></a>
			</div>

			<div class="navbar-header">
				<a class="navbar-brand lead" href="#">Copyright &copy Jonayed</a>
			</div>

		</div>
	</nav>



	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"
		integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js"
		integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc"
		crossorigin="anonymous"></script>

</body>
</html>
