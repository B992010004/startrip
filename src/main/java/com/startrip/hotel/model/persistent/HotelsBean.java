package com.startrip.hotel.model.persistent;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

@Entity(name = "hotels")
public class HotelsBean implements Serializable{
	private static final long serialVersionUID = -2333660904250123305L;

	public HotelsBean() {
	}

	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();
		
		HotelsBean bean = new HotelsBean();
		bean.setHotelmanagerid(1);
		bean.setHotelname("HAHA");
		session.save(bean);
		System.out.println("----------");
		HotelsBean temp = session.get(HotelsBean.class, 1);
		System.out.println(temp);
		
		session.getTransaction().commit();
		session.close();
		factory.close();
	}

	private Integer hotelmanagerid;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer hotelid;
	
	private String hotelname;
	private String hotelphone;
	private Integer hotelstar;
	private String hoteladdress;
	private Boolean hotelstate;
	private String hotelinfo;
	private String hotelrulenote;

	
	public Integer getHotelmanagerid() {
		return hotelmanagerid;
	}

	public void setHotelmanagerid(Integer hotelmanagerid) {
		this.hotelmanagerid = hotelmanagerid;
	}

	public Integer getHotelid() {
		return hotelid;
	}

	public void setHotelid(Integer hotelid) {
		this.hotelid = hotelid;
	}

	public String getHotelname() {
		return hotelname;
	}

	public void setHotelname(String hotelname) {
		this.hotelname = hotelname;
	}

	public String getHotelphone() {
		return hotelphone;
	}

	public void setHotelphone(String hotelphone) {
		this.hotelphone = hotelphone;
	}

	public Integer getHotelstar() {
		return hotelstar;
	}

	public void setHotelstar(Integer hotelstar) {
		this.hotelstar = hotelstar;
	}

	public String getHoteladdress() {
		return hoteladdress;
	}

	public void setHoteladdress(String hoteladdress) {
		this.hoteladdress = hoteladdress;
	}

	public Boolean getHotelstate() {
		return hotelstate;
	}

	public void setHotelstate(Boolean hotelstate) {
		this.hotelstate = hotelstate;
	}

	public String getHotelinfo() {
		return hotelinfo;
	}

	public void setHotelinfo(String hotelinfo) {
		this.hotelinfo = hotelinfo;
	}

	public String getHotelrulenote() {
		return hotelrulenote;
	}

	public void setHotelrulenote(String hotelrulenote) {
		this.hotelrulenote = hotelrulenote;
	}

	@Override
	public String toString() {
		return "HotelsBean [hotelmanagerid=" + hotelmanagerid + ", hotelid=" + hotelid + ", hotelname=" + hotelname
				+ ", hotelphone=" + hotelphone + ", hotelstar=" + hotelstar + ", hoteladdress=" + hoteladdress
				+ ", hotelstate=" + hotelstate + ", hotelinfo=" + hotelinfo + ", hotelrulenote=" + hotelrulenote + "]";
	}


}
