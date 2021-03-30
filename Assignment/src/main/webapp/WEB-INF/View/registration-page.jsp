<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>User Registration Page</title>


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<script type="text/javascript">
    $(document).ready(function() {
        var age = "";

        $('#birthdate').datepicker({
            onSelect: function(value, ui) {
                var today = new Date();
                age = today.getFullYear() - ui.selectedYear;
                $('#age').val(age);
            },
            changeMonth: true,
            changeYear: true,
            maxDate: 0
            
        });
        
        $("#emai1").change( function (){
        	
            $.ajax({
    			
            	url : 'FindEmailDb',
    			data : {
    				email : $('#emai1').val()
    			},
    			success : function(responseText) {
    				$('#emailV').text(responseText);
    			}
    		});
            
          });
        
        
    })
    
  
</script>



</head>
<body>

	<nav class="navbar fixed-top navbar-dark bg-dark">
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
						<h4 align="center">Registration From</h4>
					</div>
					<div class="card-body text-success">
						<!-- Login form -->

						<form method="post" action="registration-success">


							<label for="firstName" class="my-1">First Name</label> <input
								type="text" id="firstName" name="firstName" required> <br>
							<label for="lastName">Last Name</label> <input type="text"
								id="lastName" name="lastName" required> <br> <label
								for="address">Address</label> <input type="text" id="address"
								name="address" required> <br> <label for="phone">Phone</label>
							<input type="number" id="phone" name="phone"
								placeholder="Enter Number only" required> <br> <label
								for="emai1">Email address</label> <input type="email" id="emai1"
								name="emai1" placeholder="Enter valid and Unused email">
							<span id="emailV" class="bg-danger text-white ml-2"></span> <br>
							<label for="address">Birthdate</label> <input type="text"
								id="birthdate" name="birthdate" required> <br> <input
								type="text" id="age" name="age" class="d-none"> <label
								for="password">Password</label> <input type="password"
								id="password" name="password" required> <br>
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