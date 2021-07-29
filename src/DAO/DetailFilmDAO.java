package DAO;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import Entity.User;
import Entity.Video;
import Utils.JpaUtils;

public class DetailFilmDAO {
	private  EntityManager em = JpaUtils.getEntityManager();
	
	
	@Override
	protected void finalize() throws Throwable {
		// TODO Auto-generated method stub
		em.close();
		super.finalize();
	}

	public void insert(Video entity) {
		try {
			em.getTransaction().begin();
			em.persist(entity);
			System.out.println("thienasca");
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
			e.printStackTrace();
		}
		
		
	}

	public Video update(Video entity) {
		try {
			em.getTransaction().begin();
			em.merge(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public Video remove(String id) {
		Video entity = this.findById(id);
		try {
			em.getTransaction().begin();
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}
	public List<Video> findAll(){//where o.kieu Like:keyword
		String sql = "select o from Video o where o.kieu Like:keyword ";
		TypedQuery<Video> query = em.createQuery(sql,Video.class);
		query.setParameter("keyword","%moi%");
		List<Video> list = query.getResultList();
		return list;
		
	}
	public List<Video> selectAll(){//where o.kieu Like:keyword
		String sql = "select o from Video o";
		TypedQuery<Video> query = em.createQuery(sql,Video.class);
		List<Video> list = query.getResultList();
		return list;
		
	}
	public List<Video> findAllBo() {
		String jsql = "Select o from Video o where o.kieu Like:a";
		TypedQuery<Video> query = em.createQuery(jsql, Video.class);
		query.setParameter("a", "%bo%");
		List<Video> list = query.getResultList();
		return list;

	}

	public List<Video> findAllRap() {
		String jsql = "Select o from Video o where o.kieu Like:b";
		TypedQuery<Video> query = em.createQuery(jsql, Video.class);
		query.setParameter("b", "%rap%");
		List<Video> list = query.getResultList();
		return list;
	}
	
	public Video findById (String id) {
		try {
			em.getTransaction().begin();
			Video f = em.find(Video.class, id);
			em.getTransaction().commit();
			return f;
		} catch (Exception e) {
			// TODO: handle exception
			em.getTransaction().rollback();
			return null;
		}
		
	}
	
//	public  List<DetailFilm> findAll(){
//		List<DetailFilm> list = new ArrayList<DetailFilm>();
//		DetailFilm item = new DetailFilm();
//		item.setIdFilm("Phim 01");
//		item.setTitle("panda");
//		item.setContent("gautruc");
//		item.setDirector("ab");
//		item.setTimee(100);
//		item.setLanguagee("tiengviet");
//		item.setGenre("hai");
//		item.setReview("500");
//		item.setTrailer("abc");
//		
//		list.add(item);
//		
//		return list;
		
//	}	
	
//	public static void main(String[] args) {
//		 em = JpaUtils.getEntityManager();
//		List<DetailFilm> l = findAll();
//		for(DetailFilm d : l) {
//			System.out.println("title" + d.getTitle());
//		}
//	}
}
