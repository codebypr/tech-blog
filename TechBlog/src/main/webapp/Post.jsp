<%@page import="Tech.Helper.ConnectionProvide"%>
<%@page import="Tech.Data.PostData"%>
<%@page import="Tech.Entities.Post"%>
<%@page import="java.util.List"%>

<div class="row ">
<%
Thread.sleep(300);
PostData p2=new PostData(ConnectionProvide.getconnection());
List<Post> l2=p2.getAllPost();
		for(Post post:l2){
			%>
			<div class="mt-2 col-lg-6" >
				<div class="card">
				<div class="card-header">
					<img
						src="post_img/<%= post.getImg() %>" 
						class="card-img-top" >
						<b class="card-title"><%= post.getTitle() %></b>
						<% int uId=post.getuserId();
							String nn=p2.getUserName(uId);
						%>
						<p class="card-title"><%= nn %></p>
						</div>
					
					<div class="card-footer primary-color " >
					<h6>HELLO</h6>
					</div>
				</div>

			</div>
			
			<%
		}
%>
</div>