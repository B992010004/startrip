package com.startrip.hotel.model.persistent;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

@Entity(name = "roomtype")
public class RoomtypeBean implements Serializable{

	private static final long serialVersionUID = -7434598944388707416L;
	
	
	public RoomtypeBean() {
	}
	
	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
				.configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();

		RoomtypeBean bean = new RoomtypeBean();
		bean.setRoomid(2);
			
//		RoomtypeBean bean = session.get(RoomtypeBean.class, 1);
//		System.out.println(bean);
//		session.delete(bean);

//		session.save(bean);

		session.getTransaction().commit();
		session.close();
		factory.close();
	}

	private Integer hotelid;	
	private Integer roomstate;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer roomid;
	
	private String roomname;
	private Integer numberofpeople;
	private Integer numberofrooms;
	private java.sql.Date opendate;
	private java.sql.Date enddate;
	private Boolean extrabed;
	private Float extrabedprice;


	public Integer getHotelid() {
		return hotelid;
	}
	public void setHotelid(Integer hotelid) {
		this.hotelid = hotelid;
	}
	public Integer getRoomstate() {
		return roomstate;
	}
	public void setRoomstate(Integer roomstate) {
		this.roomstate = roomstate;
	}
	public Integer getRoomid() {
		return roomid;
	}
	public void setRoomid(Integer roomid) {
		this.roomid = roomid;
	}
	public String getRoomname() {
		return roomname;
	}
	public void setRoomname(String roomname) {
		this.roomname = roomname;
	}
	public Integer getNumberofpeople() {
		return numberofpeople;
	}
	public void setNumberofpeople(Integer numberofpeople) {
		this.numberofpeople = numberofpeople;
	}
	public Integer getNumberofrooms() {
		return numberofrooms;
	}
	public void setNumberofrooms(Integer numberofrooms) {
		this.numberofrooms = numberofrooms;
	}
	public java.sql.Date getOpendate() {
		return opendate;
	}
	public void setOpendate(java.sql.Date opendate) {
		this.opendate = opendate;
	}
	public java.sql.Date getEnddate() {
		return enddate;
	}
	public void setEnddate(java.sql.Date enddate) {
		this.enddate = enddate;
	}
	public Boolean getExtrabed() {
		return extrabed;
	}
	public void setExtrabed(Boolean extrabed) {
		this.extrabed = extrabed;
	}
	public Float getExtrabedprice() {
		return extrabedprice;
	}
	public void setExtrabedprice(Float extrabedprice) {
		this.extrabedprice = extrabedprice;
	}
	@Override
	public String toString() {
		return "RoomtypeBean [hotelid=" + hotelid + ", roomstate=" + roomstate + ", roomid=" + roomid + ", roomname="
				+ roomname + ", numberofpeople=" + numberofpeople + ", numberofrooms=" + numberofrooms + ", opendate="
				+ opendate + ", enddate=" + enddate + ", extrabed=" + extrabed + ", extrabedprice=" + extrabedprice
				+ "]";
	}
	
	

}
