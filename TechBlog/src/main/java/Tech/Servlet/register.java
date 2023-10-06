package Tech.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import Tech.Data.User_data;
import Tech.Entities.User;
import Tech.Helper.ConnectionProvide;

@MultipartConfig
public class register extends HttpServlet {
	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pr=response.getWriter();pr.println("hello");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		User user = new User(name,email,password);
		User_data ud=new User_data(ConnectionProvide.getconnection());
		
		if(ud.savedata(user)) {
			pr.println("<h1>Done!</h1>");
		}else {
			pr.println("Error");
		}
	}

}
