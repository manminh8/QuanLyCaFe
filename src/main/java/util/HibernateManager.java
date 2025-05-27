package util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class HibernateManager {
	private static volatile HibernateManager instance;
    private EntityManagerFactory emf;
    private EntityManager em;

    // Private constructor để ngăn việc khởi tạo từ bên ngoài
    private HibernateManager() {
        try {
            // Khởi tạo EntityManagerFactory (chỉ 1 lần duy nhất)
            emf = Persistence.createEntityManagerFactory("QuanLyCaFe");
            em = emf.createEntityManager();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Failed to initialize HibernateManager", e);
        }
    }

    // Phương thức static để lấy instance (thread-safe)
    public static HibernateManager getInstance() {
        if (instance == null) {
            synchronized (HibernateManager.class) {
                if (instance == null) {
                    instance = new HibernateManager();
                }
            }
        }
        return instance;
    }

    // Cung cấp EntityManager (mỗi lần gọi sẽ trả về một EntityManager mới nếu cần)
    public EntityManager getEntityManager() {
        if (em == null || !em.isOpen()) {
            em = emf.createEntityManager();
        }
        return em;
    }

    // Đóng EntityManagerFactory khi ứng dụng kết thúc (gọi từ ServletContextListener)
    public void shutdown() {
        if (em != null && em.isOpen()) {
            em.close();
        }
        if (emf != null && emf.isOpen()) {
            emf.close();
        }
    }
}
