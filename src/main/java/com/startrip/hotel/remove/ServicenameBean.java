package com.startrip.hotel.remove;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

//@Entity(name = "servicename")
public class ServicenameBean implements Serializable {

	private static final long serialVersionUID = 859871354455070412L;

	public ServicenameBean() {
	}

	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
				.configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();

		ServicenameBean bean = new ServicenameBean();
		bean.setServicename("服務種類");
		session.save(bean);

		session.getTransaction().commit();
		session.close();
		factory.close();
	}

	// @Id
	// @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer serviceid;

	private String servicename;

	public Integer getServiceid() {
		return serviceid;
	}

	public void setServiceid(Integer serviceid) {
		this.serviceid = serviceid;
	}

	public String getServicename() {
		return servicename;
	}

	public void setServicename(String servicename) {
		this.servicename = servicename;
	}

	@Override
	public String toString() {
		return "ServicenameBean [serviceid=" + serviceid + ", servicename=" + servicename + "]";
	}

}
