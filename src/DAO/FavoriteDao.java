package DAO;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;


import Entity.Favorite;
import Entity.User;
import Entity.Video;
import Utils.JpaUtils;

public class FavoriteDao {
	private  EntityManager em = JpaUtils.getEntityManager();
	
	@Override
	protected void finalize() throws Throwable {
		// TODO Auto-generated method stub
		em.close();
		super.finalize();
	}
	public Favorite create(Favorite entity) {
		try {
			em.getTransaction().begin();
			em.persist(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
		return entity;
	}

	public Favorite update(Favorite entity) {
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

	public Favorite delete(Long id) {
		Favorite entity = this.findById(id);
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
	public List<Favorite> findAll(){
		String sql = "select o from Favorite o";
		TypedQuery<Favorite> query = em.createQuery(sql,Favorite.class);
		List<Favorite> list = query.getResultList();
		return list;
		
	}	
	public Favorite findById (Long id) {
		try {
			em.getTransaction().begin();
			Favorite f = em.find(Favorite.class, id);
			em.getTransaction().commit();
			return f;
		} catch (Exception e) {
			// TODO: handle exception
			em.getTransaction().rollback();
			return null;
		}
		
	}
	public Long selectId(String idP, String user) {
		String jpql = "select o.id from Favorite o where o.video.id like :up and o.user.id like :und";
		TypedQuery<Long> query = em.createQuery(jpql, Long.class);
		query.setParameter("up", idP);
		query.setParameter("und", user);
		long result = query.getSingleResult();
		return result;
	}

	public List<Video> fillToFavo(User id){
		String jpql = "  select * from (Video inner join Favorite on Video.Id = Favorite.VideoId) inner join Users on Users.Id = Favorite.UserId  where UserId like :uid";
		Query query = em.createNativeQuery(jpql, Video.class);
		query.setParameter("uid", id);
		List<Video> list = query.getResultList();
		return list;
	}
	public Long countById(String id) {
		String jpql = "select count(o) from Favorite o where o.user.id like :uid";
		TypedQuery<Long> query = em.createQuery(jpql, Long.class);
		query.setParameter("uid", id);
		long result = query.getSingleResult();
		return result;
	}
}
