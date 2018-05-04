package com.startrip.hotel.model.persistent;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

@Entity(name="photoname")
public class PhotonameBean implements Serializable{

	private static final long serialVersionUID = -2171304932516973087L;


	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();
		
		PhotonameBean bean = new PhotonameBean();
		bean.setPhotoname("sss");
		session.save(bean);
		
		
		session.getTransaction().commit();
		session.close();
		factory.close();
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer photonameid;
	
	@OneToMany(mappedBy="photonameid")
	private Set<PhotonameBean> photos;

	
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
	
	
	
}
