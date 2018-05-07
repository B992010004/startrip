package com.startrip.hotel.model.persistent;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

@Entity(name="facilitylist")
public class FacilitylistBean implements Serializable{

	private static final long serialVersionUID = -4802990258126207198L;

	
	
	public FacilitylistBean() {
	}

	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
				.configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();

		FacilitylistBean bean = new FacilitylistBean();
		bean.setFacilityid(1);
		bean.setHotelid(1);
		session.save(bean);
		System.out.println("-----------");
		FacilitylistBean temp = session.get(FacilitylistBean.class, 1);
		System.out.println(temp);
			
		session.getTransaction().commit();
		session.close();
		factory.close();
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer checknumber;
	
	private Integer facilityid;
	
	private Integer hotelid;

	public Integer getChecknumber() {
		return checknumber;
	}

	public void setChecknumber(Integer checknumber) {
		this.checknumber = checknumber;
	}

	public Integer getFacilityid() {
		return facilityid;
	}

	public void setFacilityid(Integer facilityid) {
		this.facilityid = facilityid;
	}

	public Integer getHotelid() {
		return hotelid;
	}

	public void setHotelid(Integer hotelid) {
		this.hotelid = hotelid;
	}

	@Override
	public String toString() {
		return "FacilitylistBean [checknumber=" + checknumber + ", facilityid=" + facilityid + ", hotelid=" + hotelid
				+ "]";
	}

	
	
	
}
