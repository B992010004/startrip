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

@Entity(name="mainphoto")
public class MainphotoBean implements Serializable{
	private static final long serialVersionUID = -2931993366620449837L;

	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();
		
		MainphotoBean bean = new MainphotoBean();
		bean.setHotelid(1);
		bean.setRoomid(2);
		bean.setPhotoid(1);
		session.save(bean);
		
		session.getTransaction().commit();
		session.close();
		factory.close();
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer checknumber;

	private Integer hotelid;
	
	@ManyToOne
	@JoinColumn(name = "hotelid", referencedColumnName = "hotelid", insertable = false, updatable = false)
	private HotelsBean hotels;

	private Integer roomid;
	
	@ManyToOne
	@JoinColumn(name="roomid",referencedColumnName="roomid",insertable=false,updatable=false)
	private RoomtypeBean roomtype;
	
	
	private Integer photoid;
	
	@ManyToOne
	@JoinColumn(name="photoid", referencedColumnName="photoid",insertable=false,updatable=false)
	private PhotoBean mainphoto;

	public Integer getHotelid() {
		return hotelid;
	}

	public void setHotelid(Integer hotelid) {
		this.hotelid = hotelid;
	}

	public HotelsBean getHotels() {
		return hotels;
	}

	public void setHotels(HotelsBean hotels) {
		this.hotels = hotels;
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

	public Integer getPhotoid() {
		return photoid;
	}

	public void setPhotoid(Integer photoid) {
		this.photoid = photoid;
	}

	public PhotoBean getMainphoto() {
		return mainphoto;
	}

	public void setMainphoto(PhotoBean mainphoto) {
		this.mainphoto = mainphoto;
	}
	
	
}
