<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Tech.Entities.Message"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@include file="nav.jsp"%>


	<main style="padding-top: 60px;">
		<div class="container" style="display:  flex; justify-content: center; padding: 20px">
			
					<div class="card">
						<div class="card-header primary-color text-center">
							<span class="fa fa-user-plus fa-3x"></span>
							<p>Login here</p>
						</div>
						<%
						Message msg = (Message) session.getAttribute("msg");
						if (msg != null) {
						%>
						<div class="alert alert-danger" role="alert">
							<%= msg.getMessage() %></div>
						<%
						session.removeAttribute("msg");
						}
						%>
						<div class="card-body">
							<form action="Login" method="post">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Email
										address</label> <input type="email" class="form-control"
										required="required" name="email" aria-describedby="emailHelp">
									<div class="form-text">We'll never share your email with
										anyone else.</div>
								</div>
								<div class="mb-3">
									<label for="exampleInputPassword1" class="form-label">Password</label>
									<input type="password" class="form-control" required="required"
										name="password">
								</div>

								<button type="submit" class="btn btn-primary ">Login</button>
							</form>
						</div>

					</div>
		</div>
	</main>
	<!-- java Script -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
	<script src="Js/myjs.js" type="text/javascript"></script>
</body>
</html>