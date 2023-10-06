<%@page import="java.util.ArrayList"%>
<%@page import="Tech.Helper.ConnectionProvide"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Tech.Entities.User"%>
<%@page import="Tech.Entities.Category"%>
<%@page import="Tech.Data.PostData"%>
<%@page import="Tech.Entities.Message"%>
<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>

<!-- BOOSTRAP  CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<!-- ICON -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body style="background-color: gray;">

	<!-- NAVBAR>>>>>>>>>>>>> -->
	<nav
		class="navbar  navbar-expand-lg primary-color w-100 fixed-top"
		style="z-index: 2;">
		<div class="container-fluid">
			<a class="navbar-brand mx-5"><span class="fa fa-star"></span>
				Tech Blog</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="Profile.jsp">Blog</a></li>
					<li class="nav-item"><a class="nav-link active"
						data-bs-target="#Post-modal" data-bs-toggle="modal"
						aria-current="page" href="#">POST</a></li>
				</ul>
				<%
				User user = (User) session.getAttribute("current_user");
				%>
				<ul class=" navbar-nav ">
					<li class="nav-item "><a href="#!" class="nav-link active"
						data-bs-toggle="modal" data-bs-target="#profile"> <span
							class="fa fa-user-circle"></span> <%=user.getname()%></a></li>
					<li class="nav-item "><a class="nav-link active" href="Logout">
							<span class="fa fa-user-plus"></span> Logout
					</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END OF NAVBAR............ -->

	<main style="padding-top: 60px;">

		<!-- part  1  -->

		<div class="col-4 position-fixed fstcon z-3"
			style="z-index: 3;">
			<div class=" container  col-lg-6 ">
				<ul class="list-group list-group-flush">
					<li class="list-group-item active" aria-current="true">All
						Posts</li>
					<%
					PostData pd1 = new PostData(ConnectionProvide.getconnection());
					ArrayList<Category> l = pd1.getCategory();
					for (Category c1 : l) {
					%>
					<li class="list-group-item"><%=c1.getName()%></li>
					<%
					}
					%>
					<li class="list-group-item bg-dark text-white">An item</li>
					<li class="list-group-item bg-dark text-white">A second item</li>
					<li class="list-group-item bg-dark text-white">A third item</li>
					<li class="list-group-item bg-dark text-white">A fourth item</li>
					<li class="list-group-item bg-dark text-white">And a fifth one</li>
					<li class="list-group-item bg-dark text-white">An item</li>
					<li class="list-group-item bg-dark text-white">A second item</li>
					<li class="list-group-item bg-dark text-white">A third item</li>
					<li class="list-group-item">A fourth item</li>
					<li class="list-group-item bg-dark text-white">A fourth item</li>
					<li class="list-group-item bg-dark text-white">And a fifth one</li>
					<li class="list-group-item bg-dark text-white">An item</li>
					<li class="list-group-item bg-dark text-white">A second item</li>
					<li class="list-group-item bg-dark text-white">A third item</li>
					<li class="list-group-item">A fourth item</li>
					<li class="list-group-item bg-dark text-white">And a fifth one</li>
				</ul>

			</div>
		</div>
		<!-- part 2 -->

		<div class="container position-relative">
			<div class=" container col-md-8 position-absolute top-0 end-0">
				<div class="container text-center" id="PostLoder">
					<span class="fa fa-refresh fa-4x fa-spin"></span>
					<h3 class="mt-2">Loding...</h3>
				</div>
				<div class="container-fluid " id="MyPosts"></div>
			</div>
			<p></p>
		</div>
	</main>
	<!-- FOOTER.............. -->
	<%@ include file="footer.jsp"%>


	<!-- SEARCH MODEL.............. -->

	<div class="offcanvas offcanvas-start" data-bs-scroll="true"
		data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling"
		aria-labelledby="offcanvasScrollingLabel">
		<div class="offcanvas-header">
			<h5 class="offcanvas-title">Search here...</h5>
			<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
				aria-label="Close"></button>
		</div>
		<div class="offcanvas-body">
			<p>Try scrolling the rest of the page to see this option in
				action.</p>

			<div class=" container">
				<ul class="list-group list-group-flush">
					<li class="list-group-item active" aria-current="true">All
						Posts</li>
					<%
					PostData pd2 = new PostData(ConnectionProvide.getconnection());
					ArrayList<Category> l2 = pd1.getCategory();
					for (Category c1 : l) {
					%>
					<li class="list-group-item" data-bs-dismiss="offcanvas"><%=c1.getName()%></li>
					<%
					}
					%>
					<li class="list-group-item bg-dark text-white">An item</li>
					<li class="list-group-item bg-dark text-white">A second item</li>
					<li class="list-group-item bg-dark text-white">A third item</li>
					<li class="list-group-item bg-dark text-white">A fourth item</li>
					<li class="list-group-item bg-dark text-white">And a fifth one</li>
					<li class="list-group-item bg-dark text-white">An item</li>
					<li class="list-group-item bg-dark text-white">A second item</li>
					<li class="list-group-item bg-dark text-white">A third item</li>
					<li class="list-group-item">A fourth item</li>
					<li class="list-group-item bg-dark text-white">And a fifth one</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- ///////////// -->
	<%
	Message msg = (Message) session.getAttribute("msg");
	if (msg != null) {
	%>
	<div class="alert alert-danger" role="alert">
		<%=msg.getMessage()%></div>
	<%
	session.removeAttribute("msg");
	}
	%>

	<!-- EDIT       Modal -->
	<div class="modal fade" id="profile" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true"
		style="padding-top: 50px">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header primary-color">
					<h1 class="modal-title fs-5" id="exampleModalLabel">
						<%=user.getname()%></h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>

				</div>
				<div id="user_details" class="modal-body">
					<div class="container">
						<img src="img/<%=user.getProfile()%>" style="max-width: 120px;">
						<table class="table table-dark table-striped">
							<tr>
								<td>ID:</td>
								<td><%=user.getid()%></td>
							</tr>
							<tr>
								<td>Email:</td>
								<td><%=user.getemail()%></td>
							</tr>
							<tr>
								<td>Password:</td>
								<td><%=user.getpassword()%></td>
							</tr>
						</table>
					</div>
				</div>
				<!-- USER EDIT.............. -->
				<div id="user_edit" class="modal-body" style="display: none;">
					<div class="container">
						<img src="img/<%=user.getProfile()%>"
							style="width: 120px; height: 120px; border-radius: 50%">
						<form action="Edit" method="post" enctype="multipart/form-data">
							<div class="row mb-3">
								<label class="col-sm-2 col-form-label">ID</label>
								<div class="col-sm-10">
									<label class="col-sm-2 col-form-label"><%=user.getid()%></label>
								</div>
							</div>
							<div class="row mb-3">
								<label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
								<div class="col-sm-10">
									<input type="email" name="email" id="inputEmail3"
										class="form-control" value="<%=user.getemail()%>">
								</div>
							</div>
							<div class="row mb-3">
								<label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
								<div class="col-sm-10">
									<input type="text" name="password" class="form-control"
										id="inputPassword3" value="<%=user.getpassword()%>">
								</div>
							</div>
							<div class="row mb-3">
								<label for="inputfile" class="col-sm-2 col-form-label">Select</label>
								<div class="col-sm-10">
									<input type="file" class="form-control" name="image"
										id="inputfile">
								</div>
							</div>
							<div class="container text-center">
								<button type="submit" class="btn btn-primary">save</button>
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button id="editbtn" type="button" class="btn btn-primary">Edit</button>
				</div>
			</div>
		</div>
	</div>
	<!-- MODAL   END>>>>>>>>>>>>>> -->

	<!-- 2nd  POST   MODAL .............-->

	<div class="modal fade " id="Post-modal" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content ">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="staticBackdropLabel">Modal
						title</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">

					<form id="Post-form" action="PostServlet" method="post"
						enctype="multipart/form-data">
						<div class="form-group mb-2">
							<select class="form-control" name="id">
								<option selected disabled>---Select Category---</option>
								<%
								PostData pd = new PostData(ConnectionProvide.getconnection());
								ArrayList<Category> list = pd.getCategory();
								for (Category c : list) {
								%>
								<option value="<%=c.getId()%>"><%=c.getName()%></option>

								<%
								}
								%>

							</select>
						</div>
						<div class="form-floating mb-2">
							<input type="text" class="form-control" name="titel"
								placeholder="name@example.com"> <label
								for="floatingInput">Enter post title</label>
						</div>
						<div class="form-floating mb-2">
							<textarea class="form-control " style="height: 100px"
								name="content" placeholder="Password"></textarea>
							<label for="floatingInput">Enter your content</label>
						</div>
						<div class="form-group mb-2">
							<input name="img" type="file" class="form-control">
						</div>
						<button>SAVE</button>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Understood</button>
				</div>
			</div>
		</div>
	</div>
	<!-- ENDING OF post MODAL......... -->


	<!-- java Script -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
	<script src="Js/myjs.js" type="text/javascript"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script>
		$(document).ready(function() {

			let btn = false;
			$("#editbtn").click(function() {
				if (btn != false) {
					$("#user_details").show()
					$("#user_edit").hide();
					btn = false;
					$(this).text("Edit");
				} else {
					$("#user_details").hide()
					$("#user_edit").show();
					btn = true;
					$(this).text("Back");
				}
			});
		})
	</script>
	<!-- POST FORM>>>>>>>>>>>>>>>>>>>>> -->

	<script>
		$(document)
				.ready(
						function() {

							$('#Post-form')
									.on(
											"submit",
											function(event) {
												event.preventDefault();

												let form = new FormData(this);

												$
														.ajax({
															url : "PostServlet",
															type : 'POST',
															data : form,
															success : function(
																	data,
																	textStatus,
																	jqXRH) {
																console
																		.log(data);

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

															},
															processData : false,
															contentType : false
														});
											});
						});
	</script>

	<!-- LODING.................. -->
	<script>
		$(document).ready(function(e) {
			$.ajax({
				url : "Post.jsp",
				success : function(data, textStatus, jqXRH) {
					$("#PostLoder").hide();
					$("#MyPosts").html(data);
				},
			})
		})
	</script>
</body>
</html>