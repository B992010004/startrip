package com.startrip.hotel.remove;

import java.io.Serializable;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

//@Entity(name="photoname")
public class PhotonameBean implements Serializable {

	private static final long serialVersionUID = -2171304932516973087L;

	public PhotonameBean() {

	}

	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
				.configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();

		PhotonameBean bean = new PhotonameBean();
		bean.setPhotoname("sss");
		session.save(bean);
		System.out.println("----------");
		PhotonameBean temp = session.get(PhotonameBean.class, 1);
		System.out.println(temp);

		session.getTransaction().commit();
		session.close();
		factory.close();
	}

	// @Id
	// @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer photonameid;
	private String photoname;

	public Integer getPhotonameid() {
		return photonameid;
	}

	public void setPhotonameid(Integer photonameid) {
		this.photonameid = photonameid;
	}

	public String getPhotoname() {
		return photoname;
	}

	public void setPhotoname(String photoname) {
		this.photoname = photoname;
	}

	@Override
	public String toString() {
		return "PhotonameBean [photonameid=" + photonameid + ", photoname=" + photoname + "]";
	}

}
