<%@page import="Tech.Helper.ConnectionProvide"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css">
<!-- ICON -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- BOOSTRAP  CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<style>
</style>

</head>
<body> 

<%@ include file="nav.jsp"%>
<div class="container-fluid  mb-3 "
	style="height: 90vh; background-image: url('https://rdfl.com.au/wp-content/uploads/2021/01/maxresdefault.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center;">
	<div class="row">
	<div style="background: rgba(0, 0, 0, 0.6);" class=" col-lg-8">
		<div class=" text-white col-sm-9 m-0 p-5 " >
			<h2 class="subheading">Hello! Welcome to</h2>
			<h1 class="mb-4 display-1">
				<b>Tech blog</b>
			</h1>

			<div class="row">
				<div class="col-md-8">
					<div class="text text-white">
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in Bookmarksgrove right at the coast of the
							Semantics, a large language ocean.</p>
					</div>
				</div>
			</div>
			<button class="btn btn-outline-light">
				<span class="fa fa-handshake-o"></span> Start free
			</button>
			<a href="Login.jsp" class="btn btn-outline-light"> <span
				class="fa fa-user-circle fa-spin"></span> Login
			</a>
		</div>
	</div>
						<!-- REGISTER FORM............... -->
						
						
	<div class="col-lg-4 p-5 container reg">
	<div class=" card " style="box-shadow: 15px 15px 25px black; background: rgba(0, 0, 0, 0.1);">
		<div class="card-header text-center text-info">
			<span class="fa fa-user-plus fa-3x"></span>
			<p>Register here</p>
		</div>
		<div class="card-body">
			<form action="register" method="post" id="reg-form">
				<div class="form-floating mb-3">
					<input type="text" class="form-control" placeholder="user name"
						name="name"> <label for="floatingInput">User name</label>
				</div>
				<div class="form-floating mb-3">
					<input type="email" class="form-control" name="email"
						placeholder="name@example.com"> <label for="floatingInput">Email
						address</label>
				</div>
				<div class="form-floating">
					<input type="password" class="form-control" name="password"
						id="floatingPassword" placeholder="Password"> <label
						for="floatingPassword">Password</label>
				</div>
				<br>
				<div class="text-center" id="loder" style="display: none;">
					<span class="fa fa-spinner fa-spin fa-4x "></span>
					<h4>Please Wait...</h4>
				</div>
				<button id="subit-btn" type="submit"
					class="btn btn-outline-info form-control">Register</button>
			</form>
		</div>
	</div>
</div></div></div>
<!-- <div id="carouselExampleIndicators"
				class="carousel slide mt-3 p-0 col-md-8 "
				data-bs-ride="carousel" style="border: 4px solid black;">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="0" class="active" aria-current="true"
						aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="1" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="2" aria-label="Slide 3"></button>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img
							src="https://static.wixstatic.com/media/a97a296e1e7a40a18d6c1a756569d4da.jpg/v1/fill/w_940,h_529,fp_0.50_0.50,q_90,enc_auto/a97a296e1e7a40a18d6c1a756569d4da.jpg"
							class=" img-fluid w-100">
					</div>
					<div class="carousel-item">
						<img
							src="https://static.wixstatic.com/media/8f7ed48fcf134b07a1fcba99022149a4.jpg/v1/fill/w_940,h_529,fp_0.50_0.50,q_90,enc_auto/8f7ed48fcf134b07a1fcba99022149a4.jpg"
							class="img-fluid w-100 ">
					</div>
					<div class="carousel-item">
						<img
							src="https://static.wixstatic.com/media/a487476686464aaf8212ff0c6439a50d.jpg/v1/fill/w_940,h_529,fp_0.50_0.50,q_90,enc_auto/a487476686464aaf8212ff0c6439a50d.jpg"
							class="img-fluid w-100 ">
					</div>
				</div>

			</div> -->

<!-- FOOTER.............. --> <%@ include file="footer.jsp"%>

<!-- card  --> <!-- javaScript       	AND                 JQuary           -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous"></script> <script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script> <script src="Js/myjs.js"
	type="text/javascript"></script>
	
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script>
		$(document)
				.ready(
						function() {
							console.log("loded......");
							$('#reg-form')
									.on(
											'submit',
											function(event) {
												event.preventDefault();
												let form = new FormData(this);
												$('#loder').show();
												$('#submt-btn').hide();
												$
														.ajax({
															url : "register",
															type : 'POST',
															data : form,
															success : function(
																	data,
																	textStatus,
																	jqXRH) {
																console
																		.log(data);
																$('#loder')
																		.hide();
																$('#submt-btn')
																		.show();
																swal(
																		"Good job!",
																		"You clicked the button!",
																		"success");

															},
															error : function(
																	jqXRH,
																	textStatus,
																	errorThrown) {
																console
																		.log(jqXRH);
																$('#loder')
																		.hide();
																$('#submt-btn')
																		.show();
															},
															processData : false,
															contentType : false
														});
											});
						});
	</script>
</body>
</html>