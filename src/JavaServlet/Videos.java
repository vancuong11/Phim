package JavaServlet;

import java.io.File;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;

import org.apache.commons.beanutils.BeanUtils;

import DAO.DetailFilmDAO;
import DAO.UserDAO;
import Entity.User;
import Utils.JpaUtils;

@MultipartConfig
@WebServlet({"/home/create","/home/delete","/home/update","/home/edit/*"})
public class Videos extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		DetailFilmDAO dao = new DetailFilmDAO();
		Entity.Video video = new Entity.Video();
		String uri = req.getRequestURI();
		if (uri.contains("edit")) {
			String id = uri.substring(uri.lastIndexOf("-")+1);
			video = dao.findById(id);
		}else if (uri.contains("create")) {
			
			try {
				BeanUtils.populate(video,req.getParameterMap());
				// đường dẫn thư mục tính từ gốc của website
				File dir = new File(req.getServletContext().getRealPath("/images"));
				if(!dir.exists()) { // tạo nếu chưa tồn tại
				dir.mkdirs();
				}
				// lưu các file upload vào thư mục files
				Part photo = req.getPart("photo_file"); // file hình
//				File photoFile = new File(dir,photo.getsub)
//				photo.write(photoFile.getAbsolutePath());
//				dao.insert(video);//

				req.setAttribute("message", "Insert Success!");
			} catch (Exception e) {
				req.setAttribute("message", "Insert Fail!");
				e.printStackTrace();
				
				// TODO: handle exception
			}
		}else if(uri.contains("delete")) {
			try {
				String id = req.getParameter("id");
				dao.remove(id);
				req.setAttribute("message", "Delete Success!");
			} catch (Exception e) {
				// TODO: handle exception
				req.setAttribute("message", "Delete Fail!");
			}
		}else if(uri.contains("update")) {
			try {
				BeanUtils.populate(video,req.getParameterMap());
				File dir = new File(req.getServletContext().getRealPath("/files"));
				if(!dir.exists()) {
					dir.mkdirs();
				}	
				Part photo = req.getPart("photo_file");//file hinh
//				File photofile = new File(dir,photo.getSubmittedFileName());
//				photo.write(photofile.getAbsolutePath());
				dao.update(video);
				req.setAttribute("message", "Update Success!");
			} catch (Exception e) {
				// TODO: handle exception
				req.setAttribute("message", "Update Fail!");
			}
		}
//		List<videoFilm> de = new ArrayList<videoFilm>();
//		de = dao.findAll();
//		System.out.println(de.size());
		req.setAttribute("from", video);
		req.setAttribute("video", dao.selectAll());
		req.getRequestDispatcher("/views/admin/video.jsp").forward(req, resp);
	}
}
