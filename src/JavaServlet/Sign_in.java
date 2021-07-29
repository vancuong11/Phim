package JavaServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.DetailFilmDAO;
import DAO.UserDAO;
import Entity.User;

@WebServlet("/account/sign_in")
public class Sign_in extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String method = req.getMethod();
//		if (method.equalsIgnoreCase("post")) {
			String id = req.getParameter("username");
			String pw = req.getParameter("password");
			try {
				UserDAO dao = new UserDAO();
				User user = dao.findById(id);
				if (user != null && user.getPassword().equals(pw) ) {
					if (user.isAdmin() == true) {
//						HttpSession session = req.getSession();
//						session.setAttribute("username", user);
						req.getSession().setAttribute("form", user);
						req.setAttribute("form", req.getSession().getAttribute("form"));
//						req.getRequestDispatcher("/views/admin/home.jsp").forward(req, resp);
						resp.sendRedirect("/WebPhim/home-admin");
						
						
					} else if (user.isAdmin() == false) {
//						HttpSession session = req.getSession();
//						session.setAttribute("username", user);
						req.getSession().setAttribute("form", user);
						DetailFilmDAO daoo = new DetailFilmDAO();
						req.setAttribute("phimmoi", daoo.findAll());						
						req.setAttribute("phimbo", daoo.findAllBo());
						req.setAttribute("phimrap", daoo.findAllRap());
						req.getRequestDispatcher("/views/account/index.jsp").forward(req, resp);
						req.setAttribute("form", user);
					} else {
						req.setAttribute("message", "FAIL!");
						req.getRequestDispatcher("/views/account/sign_in.jsp").forward(req, resp);
					}
				} else {
					req.setAttribute("message", "FAIL!");
					req.getRequestDispatcher("/views/account/sign_in.jsp").forward(req, resp);
				}
			} catch (Exception e) {				
				req.getRequestDispatcher("/views/account/sign_in.jsp").forward(req, resp);
			}
//		}else {
//			req.setAttribute("message", "ddangw nhaao di ban!");
//			req.getRequestDispatcher("/views/account/sign_in.jsp").forward(req, resp);
//		}
			
	}
}
