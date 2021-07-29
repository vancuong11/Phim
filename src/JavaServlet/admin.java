package JavaServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import DAO.DetailFilmDAO;
import Entity.Video;
@WebServlet({"/home-admin","/home-videos","/home-user","/home-report"})
public class admin extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		DetailFilmDAO dao = new DetailFilmDAO();
		Video detail = new Video();
		String uri = req.getRequestURI();
		
		
		if (uri.contains("home-admin")) {
			req.getRequestDispatcher("/views/admin/home.jsp").forward(req, resp);		
		}else if (uri.contains("videos")) {			
			resp.sendRedirect("/WebPhim/home/create");
		
		}else if(uri.contains("home-user")) {
			resp.sendRedirect("/WebPhim/user/index");
		}else if(uri.contains("home-report")) {
			req.getRequestDispatcher("/views/admin/report.jsp").forward(req, resp);
		}
	}
}
