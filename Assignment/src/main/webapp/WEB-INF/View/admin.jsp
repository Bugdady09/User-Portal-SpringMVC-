<%@page import="com.jonayed.Model.AdminUserDetasils"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Admin</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
    	$("#search").keyup( function (){
    		
				$.ajax({
            	url : 'searchUser',
    			data : {
    				searchdata : $('#search').val()
    			},
    			success : function(responseText) {
    				$('#tableBody').html(responseText);
    			}
    		});
            
    		
    	});
        
    });
    
  
</script>

</head>


<body>

	<nav class="navbar navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Navigation</a>
			</div>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-bs-toggle="dropdown" aria-expanded="false">Admin</a>
				<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					<li><a href="adminLogout">Logout</a></li>
				</ul></li>

		</div>
	</nav>

	<div class="container-fluid mt-3">
		<div class="row">
			<div class="col-3 border-end border-dark">
				<ul class="list-group">
					<li class="list-group-item"><a href="#">User List</a></li>
				</ul>
			</div>
			<div class="col-9">
				<div class="navbar navbar-dark">
					<p class="float-start h1">User List</p>
					<p class="float-end">
						<input type="text" name="search" id="search"
							placeholder="search by any one">
					</p>
				</div>
				<hr>

				<table class="table table-striped border">
					<thead>
						<tr>
							<th scope="col">Name</th>
							<th scope="col">Age</th>
							<th scope="col">Email</th>
							<th scope="col">Phone</th>
						</tr>
					</thead>
					<tbody id="tableBody">

						<%
  	ResultSet rs = (ResultSet) request.getAttribute("allUsers");
  	while(rs.next()){
  
  %>
						<tr>
							<td><%= rs.getString(1) %></td>
							<td><%= rs.getString(2) %></td>
							<td><%= rs.getString(3) %></td>
							<td><%= rs.getString(4) %></td>
						</tr>

						<%} %>
					</tbody>
				</table>

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
