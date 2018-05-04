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

@Entity(name="servicelist")
public class ServicelistBean implements Serializable{

	private static final long serialVersionUID = -5029566218769260965L;
	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
				.configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();

		ServicelistBean bean = new ServicelistBean();
		bean.setServiceid(1);
		bean.setHotelid(1);
		bean.setRoomid(1);
		session.save(bean);

		session.getTransaction().commit();
		session.close();
		factory.close();
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer checknumber;
	
	private Integer serviceid;
	
	@ManyToOne
	@JoinColumn(name = "serviceid", referencedColumnName = "serviceid", insertable = false, updatable = false)
	private ServicenameBean servicename;
	
	private Integer hotelid;
	
	@ManyToOne
	@JoinColumn(name = "hotelid", referencedColumnName = "hotelid", insertable = false, updatable = false)
	private HotelsBean hotels;
	
	private Integer roomid;
	// if roomid = null, all rooms has this service.

	@ManyToOne
	@JoinColumn(name="roomid",referencedColumnName="roomid",insertable=false,updatable=false)
	private RoomtypeBean roomtype;
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

	public ServicenameBean getServicename() {
		return servicename;
	}

	public void setServicename(ServicenameBean servicename) {
		this.servicename = servicename;
	}

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
	
	
	
}
