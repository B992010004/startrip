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
public class RoomtypeBean implements Serializable {

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

		// RoomtypeBean bean = session.get(RoomtypeBean.class, 1);
		// System.out.println(bean);
		// session.delete(bean);

		// session.save(bean);

		session.getTransaction().commit();
		session.close();
		factory.close();
	}

	private Integer hotelid;
	private Boolean roomstate;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer roomid;

	private String roomname;
	private Integer numberofpeople;
	private Integer numberofrooms;
	private java.sql.Date opendate;
	private java.sql.Date enddate;
	private Integer basicprice;
	private String roomnote;

	public Integer getHotelid() {
		return hotelid;
	}

	public void setHotelid(Integer hotelid) {
		this.hotelid = hotelid;
	}

	public Boolean getRoomstate() {
		return roomstate;
	}

	public void setRoomstate(Boolean roomstate) {
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

	public Integer getBasicprice() {
		return basicprice;
	}

	public void setBasicprice(Integer basicprice) {
		this.basicprice = basicprice;
	}

	public String getRoomnote() {
		return roomnote;
	}

	public void setRoomnote(String roomnote) {
		this.roomnote = roomnote;
	}

	@Override
	public String toString() {
		return "RoomtypeBean [hotelid=" + hotelid + ", roomstate=" + roomstate + ", roomid=" + roomid + ", roomname="
				+ roomname + ", numberofpeople=" + numberofpeople + ", numberofrooms=" + numberofrooms + ", opendate="
				+ opendate + ", enddate=" + enddate + ", basicprice=" + basicprice + ", roomnote=" + roomnote + "]";
	}

}
