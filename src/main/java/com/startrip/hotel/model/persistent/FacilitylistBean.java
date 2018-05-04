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

	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
				.configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();

		FacilitylistBean bean = new FacilitylistBean();
		bean.setFacilityid(1);
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
	
	private Integer facilityid;
	
	@ManyToOne
	@JoinColumn(name = "facilityid", referencedColumnName = "facilityid", insertable = false, updatable = false)
	private FacilitynameBean facilityname;
	
	private Integer hotelid;
	
	@ManyToOne
	@JoinColumn(name = "hotelid", referencedColumnName = "hotelid", insertable = false, updatable = false)
	private HotelsBean hotels;
	
	private Integer roomid;
	// if roomid = null, all rooms has this facility.

	@ManyToOne
	@JoinColumn(name="roomid",referencedColumnName="roomid",insertable=false,updatable=false)
	private RoomtypeBean roomtype;

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

	public FacilitynameBean getFacilityname() {
		return facilityname;
	}

	public void setFacilityname(FacilitynameBean facilityname) {
		this.facilityname = facilityname;
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
