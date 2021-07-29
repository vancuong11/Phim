package JavaServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import DAO.FavoriteDao;
import DAO.UserDAO;
import Entity.Favorite;
import Entity.User;
@WebServlet({"/page/favorite/index","/favorite/dislike/*"})
public class Dislike extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
//		String uri = req.getRequestURI();
//		String id = uri.substring(uri.lastIndexOf("/")+1);
		User user = (User) req.getSession().getAttribute("form");
		FavoriteDao faDao = new FavoriteDao();
		req.setAttribute("favorite", faDao.fillToFavo(user));
		req.getRequestDispatcher("/views/account/favorite.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri = req.getRequestURI();
		if(uri.contains("dislike")) {
			String id = uri.substring(uri.lastIndexOf("/") + 1);
			User user = (User) req.getSession().getAttribute("form");		
			FavoriteDao dao = new FavoriteDao();	
			dao.delete(dao.selectId(id,user.getId()));
		}
		doGet(req, resp);
	}
}
