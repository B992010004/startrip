package com.startrip.hotel.model.persistent;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

@Entity(name="facilityname")
public class FacilitynameBean {
	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();
		
		FacilitynameBean bean = new FacilitynameBean();
		bean.setFacilityname("服務種類");
		session.save(bean);
		
		session.getTransaction().commit();
		session.close();
		factory.close();
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer facilityid;
	private String facilityname;
	
	
	public Integer getFacilityid() {
		return facilityid;
	}
	public void setFacilityid(Integer facilityid) {
		this.facilityid = facilityid;
	}
	public String getFacilityname() {
		return facilityname;
	}
	public void setFacilityname(String facilityname) {
		this.facilityname = facilityname;
	}
	
	
}
