package JavaServlet;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.DetailFilmDAO;
import DAO.FavoriteDao;
import DAO.UserDAO;
import Entity.Favorite;
import Entity.User;
import Entity.Video;

@WebServlet({ "/page/detail/*", "/favorite/like/*","/favorite/share/*" })
public class Favorites extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri = req.getRequestURI();
		String id = uri.substring(uri.lastIndexOf("/") + 1);
		DetailFilmDAO dao = new DetailFilmDAO();
		req.setAttribute("item", dao.findById(id));
		req.getRequestDispatcher("/views/account/detail.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String uri = req.getRequestURI();
		if (uri.contains("like")) {
			this.like(req, resp);
		}else if(uri.contains("share")) {
			this.share(req,resp);
		}
//		FavoriteDao faDao = new FavoriteDao();
//		Favorite fa = new Favorite();
//		User user = (User) req.getSession().getAttribute("form");
//		String id = uri.substring(uri.lastIndexOf("/") + 1);
//		boolean check;
//		if (user ==null) {
//			check = false;
//		}else {
//			try {
//				fa = faDao.selectByUser(user.getId(), id);
//				check = false;
//			} catch (Exception e) {
//				check = true;
//			}
//			
//		}
//		req.setAttribute("check", check);
	}

	protected void like(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String uri = req.getRequestURI();
		String id = uri.substring(uri.lastIndexOf("/") + 1);

		FavoriteDao daoFA = new FavoriteDao();
		UserDAO daoUS = new UserDAO();
		DetailFilmDAO DaoP = new DetailFilmDAO();
		Favorite fa = new Favorite();
//			fa.setId((long) 213123);
		User user = (User) req.getSession().getAttribute("form");
		fa.setUser(daoUS.findById(user.getId()));
//			System.out.println(daoUS.findById(user.getId()).getFullname());
		fa.setVideo(DaoP.findById(id));
//			System.out.println(DaoP.findById(id).getDirector());

		daoFA.create(fa);
		// req.getRequestDispatcher("/favorite/like/" + id).forward(req, resp);
		resp.sendRedirect("/WebPhim/page/detail/" + id);
	}
	protected void share(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String uri = req.getRequestURI();
		String id = uri.substring(uri.lastIndexOf("/")+1);
		User user = (User) req.getSession().getAttribute("form");
		UserDAO usDao = new UserDAO();
		DetailFilmDAO vdDao = new DetailFilmDAO();
		User us = usDao.findById(user.getId());
		Video vd = vdDao.findById(id);
		
		String from ="cuongg121101@gmail.com";
		String to = req.getParameter("To");
		String content = req.getParameter("Content");
		String body =  " " + us.getFullname() + "</b> chia se phim <b>"
				+ vd.getTitle() + "</b> trang web http://localhost:8080/WebPhim/index."
				+ "<br> <a href=\"http://localhost:8080/WebPhim/page/detail/" + id + "\">Link phim</a>"
				+ "<br> <p>Link Trailer: </p>" + "https://www.youtube.com/watch?v=" + vd.getTrailer();
		Properties props = new Properties();
		props.setProperty("mail.smtp.auth", "true");
		props.setProperty("mail.smtp.starttls.enable", "true");
		props.setProperty("mail.smtp.host", "smtp.gmail.com");
		props.setProperty("mail.smtp.port", "587");
		
		Session session = Session.getInstance(props, new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// TODO Auto-generated method stub
				String userName = "cuongg121101@gmail.com";
				String passWord = "01652615428a";
				return new PasswordAuthentication(userName, passWord);
			}

		});

		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO, to);
			message.setSubject(content, "utf-8");
			message.setText(body, "utf-8", "html");
			message.setReplyTo(message.getFrom());

			Transport.send(message);

			req.setAttribute("message", true);
			req.setAttribute("color", "success");
			req.setAttribute("status", "Thanh cong!");
			req.setAttribute("text", "Chia se phim Thanh cong!");
		} catch (Exception e) {
			req.setAttribute("message", true);
			req.setAttribute("color", "danger");
			req.setAttribute("status", "Fail!");
			req.setAttribute("text", "Chia se phim Fail!");
		}
		// resp.sendRedirect("/WebMovie/page/detail/share/" + id);
		doGet(req, resp);
		
	}
	
}
