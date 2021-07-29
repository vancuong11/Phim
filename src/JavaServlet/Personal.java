package JavaServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import DAO.FavoriteDao;
import DAO.UserDAO;
import Entity.User;
@WebServlet({"/page/profile/index", "/page/profile/update"})
public class Personal extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		User id  = (User) req.getSession().getAttribute("form");
		UserDAO us = new UserDAO();
		FavoriteDao dao = new FavoriteDao();
		req.setAttribute("profile", us.findById(id.getId()));
		req.setAttribute("favorite", dao.countById(id.getId()));
		req.getRequestDispatcher("/views/account/personal.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.contains("update")) {
			doUpdate(req,resp);
		}
	}
	protected void doUpdate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		User id = (User) req.getSession().getAttribute("form");
		String Ten = req.getParameter("ten");
		String Email = req.getParameter("Email");
		String matKhau = req.getParameter("matKhau");
		String xnMatKhau = req.getParameter("xnMatKhau");
		
		UserDAO dao = new UserDAO();
		User entity = dao.findById(id.getId());
		
		if(matKhau.equals(xnMatKhau) == false) {
			req.setAttribute("backround", "danger");
			req.setAttribute("message", "Xác nhận mật khẩu không đúng!");
			req.setAttribute("check", "true");
		}
		else {
			req.setAttribute("check", null);
			entity.setFullname(Ten);
			entity.setEmail(Email);
			entity.setPassword(xnMatKhau);
			
			dao.update(entity);
			req.setAttribute("message", "Xác nhận thành công!");
			//resp.sendRedirect("/WebMovie/page/profile/index");
		}
		//req.getRequestDispatcher("/views/profile.jsp").forward(req, resp);
		doGet(req, resp);
		
	}
}
