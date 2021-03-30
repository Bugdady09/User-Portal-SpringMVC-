<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
<title>Change Password</title>
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


		</div>
	</nav>


	<div class="container" style="margin-top: 100px;">

		<div class="row">

			<div class="col"></div>

			<div class="col-6">

				<!-- Card body started .. -->
				<div class="card border-success mb-3">
					<div class="card-header">
						<h4 align="center">Comfirm Password</h4>
					</div>
					<div class="card-body text-success">
						<!-- Login form -->

						<form method="post" action="changepass-success">
							<div class="form-group">
								<label for="OldPass">Old Password</label> <input type="password"
									class="form-control" id="OldPass" name="OldPass">

							</div>
							<div class="form-group">
								<label for="newPass">New Password</label> <input type="password"
									class="form-control" id="newPass" name="newPass">
							</div>
							<button type="submit" class="btn btn-primary mt-2">Change
								Password</button>
								<a href="profile" class="btn btn-danger mt-2">Cancle</a>
						</form>

						<!-- login form end -->
					</div>
				</div>

				<!-- card body end.. -->
			</div>

			<div class="col"></div>

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
