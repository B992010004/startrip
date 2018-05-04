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
              
@Entity(name="singlenight")
public class SinglenightBean implements Serializable{

	private static final long serialVersionUID = 7127500049359610632L;


	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
				.configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();

		SinglenightBean bean = new SinglenightBean();
		bean.setRoomnumber(1);
		bean.setRoomid(1);;

		session.save(bean);

		session.getTransaction().commit();
		session.close();
		factory.close();
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer checknumber;
	
	private Integer roomid;
	
	@ManyToOne
	@JoinColumn(name="roomid",referencedColumnName="roomid",insertable=false,updatable=false)
	private RoomtypeBean roomtype;
	
	private Integer roomnumber;
	private java.sql.Date bookingdate;
	private Integer roomprice;
	private Boolean locked;
	
	
	public Integer getChecknumber() {
		return checknumber;
	}
	public void setChecknumber(Integer checknumber) {
		this.checknumber = checknumber;
	}
	

	public Integer getRoomid() {
		return roomid;
	}
	public void setRoomid(Integer roomid) {
		this.roomid = roomid;
	}
	public RoomtypeBean getRoomtype() {
		return roomtype;
	}
	public void setRoomtype(RoomtypeBean roomtype) {
		this.roomtype = roomtype;
	}
	public Integer getRoomnumber() {
		return roomnumber;
	}
	public void setRoomnumber(Integer roomnumber) {
		this.roomnumber = roomnumber;
	}
	public java.sql.Date getBookingdate() {
		return bookingdate;
	}
	public void setBookingdate(java.sql.Date bookingdate) {
		this.bookingdate = bookingdate;
	}
	public Integer getRoomprice() {
		return roomprice;
	}
	public void setRoomprice(Integer roomprice) {
		this.roomprice = roomprice;
	}
	public Boolean getLocked() {
		return locked;
	}
	public void setLocked(Boolean locked) {
		this.locked = locked;
	}
	
	
}
