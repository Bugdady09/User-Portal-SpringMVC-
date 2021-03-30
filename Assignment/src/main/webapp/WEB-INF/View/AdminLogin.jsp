<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>




<!doctype html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<title>Admin Login Page</title>
</head>
<body>

	<nav class="navbar fixed-top navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Navigation</a>
			</div>
		</div>
	</nav>


	<div class="container" style="margin-top: 120px;">

		<div class="row">

			<div class="col"></div>

			<div class="col-6">

				<!-- Card body started .. -->

				<div class="card border-success mb-3">
					<div class="card-header">
						<h4 align="center">Admin Login</h4>
					</div>
					<div class="card-body text-success">
						<!-- Login form -->

						<form method="post" action="loginAdmin-success">
							<div class="form-group">
								<label for="emai1">Email address</label> <input type="email"
									class="form-control" id="emai1" name="email">

							</div>
							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" id="password" name="passward">
							</div>
							<button type="submit" class="btn btn-primary mt-2">Submit</button>
							<a href="index" class="btn btn-danger mt-2">Cancle</a>
						</form>

						<!-- login form end -->
					</div>
				</div>

				<!-- card body end.. -->
			</div>

			<div class="col"></div>

		</div>
	</div>


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



</body>
</html>