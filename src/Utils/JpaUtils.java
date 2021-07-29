package Utils;

import javax.persistence.*;



public class JpaUtils {
	private static EntityManagerFactory factory;
	static public EntityManager getEntityManager() {
		if (factory == null || !factory.isOpen()) {
			factory = Persistence.createEntityManagerFactory("WebPhim");
		}
		return factory.createEntityManager();

	}
	static public void shutdown() {
		if (factory!=null && factory.isOpen()) {
			factory.close();
		}
		factory = null;
	}
	}

