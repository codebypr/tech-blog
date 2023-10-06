package Tech.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.PrintWriter;

import Tech.Data.User_data;
import Tech.Entities.Message;
import Tech.Entities.User;
import Tech.Helper.Image;
import Tech.Helper.ConnectionProvide;

@MultipartConfig
public class Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		Part part=request.getPart("image");
		String profileName=part.getSubmittedFileName();
		
//		get session................
		HttpSession s=request.getSession();
		User user=(User)s.getAttribute("current_user");
		user.setemail(email);
		user.setpassword(password);
		String oldprofile=user.getProfile();
		user.setProfile(profileName);
		
//		Update on Database............
		
		User_data ud=new User_data(ConnectionProvide.getconnection());
		boolean b=ud.updateUser(user);
		if(b) {
			String path=request.getServletContext().getRealPath("/")+"img/"+user.getProfile();
			String oldpath=request.getServletContext().getRealPath("/")+"img/"+oldprofile;
			if(!oldprofile.equals("default.png")) {
				Image.delete_img(oldpath);
			}
				if(Image.save_img(part.getInputStream(), path)) {
					Message msg=new Message("Your profile is Successfully Updated....", "success","alert-success");
					HttpSession session=request.getSession();
					session.setAttribute("msg", msg);
				}
			
		}
		response.sendRedirect("Profile.jsp");	
	}

}
