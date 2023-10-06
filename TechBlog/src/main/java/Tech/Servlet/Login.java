package Tech.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import Tech.Data.User_data;
import Tech.Entities.Message;
import Tech.Entities.User;
import Tech.Helper.ConnectionProvide;

public class Login extends HttpServlet {

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		out.println(email+password);

			User_data ud=new User_data(ConnectionProvide.getconnection());
			User user=ud.get_userdata(email, password);
			if(user!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("current_user",user);
			response.sendRedirect("Profile.jsp");
			}else {
				Message msg=new Message("Something went wrong...", "error","alert-danger");
				HttpSession session=request.getSession();
				session.setAttribute("msg", msg);
				response.sendRedirect("Login.jsp");
			}
	}

}
