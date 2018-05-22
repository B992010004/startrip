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

//@Entity(name = "servicelist")
public class ServicelistBean implements Serializable {

	private static final long serialVersionUID = -5029566218769260965L;

	public ServicelistBean() {
	}

	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
				.configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();

		ServicelistBean bean = new ServicelistBean();
		bean.setServiceid(1);
		bean.setHotelid(1);
		session.save(bean);

		session.getTransaction().commit();
		session.close();
		factory.close();
	}

	// @Id
	// @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer checknumber;

	private Integer serviceid;

	private Integer hotelid;

	public Integer getChecknumber() {
		return checknumber;
	}

	public void setChecknumber(Integer checknumber) {
		this.checknumber = checknumber;
	}

	public Integer getServiceid() {
		return serviceid;
	}

	public void setServiceid(Integer serviceid) {
		this.serviceid = serviceid;
	}

	public Integer getHotelid() {
		return hotelid;
	}

	public void setHotelid(Integer hotelid) {
		this.hotelid = hotelid;
	}

	// @Override
	public String toString() {
		return "ServicelistBean [checknumber=" + checknumber + ", serviceid=" + serviceid + ", hotelid=" + hotelid
				+ "]";
	}

}
