package JavaServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import DAO.DetailFilmDAO;
import DAO.UserDAO;
import Entity.User;
@WebServlet({
	"/user/index","/user/update","/user/delete"
})
public class Users extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String id = uri.substring(uri.lastIndexOf("/") + 1);
		UserDAO dao = new UserDAO();
		req.setAttribute("list", dao.findAll());
		req.getRequestDispatcher("/views/admin/user.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if(uri.contains("delete")){
			doDeleteU(req, resp);
		}
		
		if(uri.contains("update")) {
			doUpdateU(req, resp);
		}
	}
	protected void doUpdateU(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("maUpdate");
		UserDAO dao = new UserDAO();
		User entity = new User();
		entity = dao.findById(id);
		boolean temp = entity.isAdmin();
		entity.setAdmin(!temp);
		dao.update(entity);
		resp.sendRedirect("/WebPhim/user/index");
		
	}
	protected void doDeleteU(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("maXoa");
		UserDAO dao = new UserDAO();
		dao.remove(id);
		resp.sendRedirect("/WebPhim/user/index");
		
	}
}
