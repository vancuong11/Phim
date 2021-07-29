package JavaServlet;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.Session;

import DAO.DetailFilmDAO;
import DAO.UserDAO;
import Entity.User;
@WebServlet({
	"/account/index","/account/sign_up"
})
public class Home extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String uri = req.getRequestURI();	
		if(uri.contains("sign_up")) {
			this.Regiter(req,resp);
		}else {
			DetailFilmDAO dao = new DetailFilmDAO();
			req.setAttribute("phimmoi", dao.findAll());
			req.setAttribute("phimbo", dao.findAllBo());
			req.setAttribute("phimrap", dao.findAllRap());
		}	
		
	
		req.getRequestDispatcher("/views/account/index.jsp").forward(req, resp);
	}

	private void Regiter(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("WebPhim");
		EntityManager em = emf.createEntityManager();
		String method = req.getMethod();
//			if (method.equalsIgnoreCase("post")) {
				try {
					em.getTransaction().begin();
					User entity = new User();
					BeanUtils.populate(entity, req.getParameterMap());
					UserDAO dao = new UserDAO();
					dao.create(entity);
//					entity.setId(req.getParameter("username"));
//					entity.setPassword(req.getParameter("password"));
//					entity.setFullname(req.getParameter("fullname"));
//					entity.setEmail(req.getParameter("email"));
//					entity.setAdmin(Boolean.parseBoolean(req.getParameter("admin")));
//					em.persist(entity);
//					em.getTransaction().commit();
//					System.out.println("Register Successlly!");
					req.setAttribute("message", "Register Successlly!");
				} catch (Exception e) {
					req.setAttribute("message", "Register Fail!");
				}
//			}
			req.getRequestDispatcher("/views/account/sign_up.jsp").forward(req, resp);
		
	}
	
	
	
	
}
