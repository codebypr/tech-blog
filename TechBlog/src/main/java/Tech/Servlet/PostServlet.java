package Tech.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import Tech.Data.PostData;
import Tech.Entities.Post;
import Tech.Entities.User;
import Tech.Helper.ConnectionProvide;
import Tech.Helper.Image;
import jakarta.servlet.http.Part;
@MultipartConfig
public class PostServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String titel=request.getParameter("titel");
		String content=request.getParameter("content");
		int id=Integer.parseInt(request.getParameter("id"));
		Part part=request.getPart("img");
		String imgName=part.getSubmittedFileName();
		HttpSession s=request.getSession();
		User user=(User)s.getAttribute("current_user");
		int userId=user.getid();
		
		Post p=new Post(titel, content, imgName,id, userId);
		PostData pd=new PostData(ConnectionProvide.getconnection());
		if(pd.savePost(p)) {
			String path=request.getServletContext().getRealPath("/")+"post_img/"+p.getImg();
			Image.save_img(part.getInputStream(), path); 
		}
	}

}
