package Tech.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import Tech.Entities.Message;

public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s=request.getSession();
		s.removeAttribute("current_user");
		
		Message m=new Message("You are successfully logout..","sucess","alert-success");
		s.setAttribute("msg", m);
		response.sendRedirect("Login.jsp");
	}

}
