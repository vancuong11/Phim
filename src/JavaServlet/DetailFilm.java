package JavaServlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.DetailFilmDAO;
@WebServlet({"/account/detail/*"})
public class DetailFilm extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("WebPhim");
		EntityManager em = emf.createEntityManager();
		
		String uri = req.getRequestURI();
		String id = uri.substring(uri.lastIndexOf("/")+1);
		
		try {
			em.getTransaction().begin();
			DetailFilmDAO dao = new DetailFilmDAO();
			Entity.Video detail = new Entity.Video();
			req.setAttribute("item", dao.findById(id));		
			em.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
			em.getTransaction().rollback();
		}
		
//		DetailFilmDAO dao = new DetailFilmDAO();
		
		
		req.getRequestDispatcher("/views/account/detail.jsp").forward(req, resp);
	}
}
