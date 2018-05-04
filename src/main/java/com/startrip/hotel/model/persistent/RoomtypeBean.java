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
	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
				.configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();

		RoomtypeBean bean = new RoomtypeBean();
		bean.setRoomstate(1);

		session.save(bean);

		session.getTransaction().commit();
		session.close();
		factory.close();
	}

	private Integer hotelid;
	
	@ManyToOne
	@JoinColumn(name = "hotelid", referencedColumnName = "hotelid", insertable = false, updatable = false)
	private HotelsBean hotels;
	
	private Integer roomstate;
	
	@ManyToOne
	@JoinColumn(name = "roomstate", referencedColumnName = "stateid", insertable = false, updatable = false)
	private RoomstateBean states;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer roomid;
	
	@OneToMany(mappedBy="roomid",cascade={CascadeType.REMOVE})
	private Set<SinglenightBean> singlenight;
	
	@OneToMany(mappedBy="roomid",cascade={CascadeType.REMOVE})
	private Set<MainphotoBean> mainphoto;	
	
	@OneToMany(mappedBy="roomid",cascade={CascadeType.REMOVE})
	private Set<FacilitylistBean> facilitylist;	

	@OneToMany(mappedBy="roomid",cascade={CascadeType.REMOVE})
	private Set<ServicelistBean> servicelist;
	
	@OneToMany(mappedBy="roomid",cascade={CascadeType.REMOVE})
	private Set<RulelistBean> rulelist;
	
	
	
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
	public HotelsBean getHotels() {
		return hotels;
	}
	public void setHotels(HotelsBean hotels) {
		this.hotels = hotels;
	}
	public Integer getRoomstate() {
		return roomstate;
	}
	public void setRoomstate(Integer roomstate) {
		this.roomstate = roomstate;
	}
	public RoomstateBean getStates() {
		return states;
	}
	public void setStates(RoomstateBean states) {
		this.states = states;
	}
	public Integer getRoomid() {
		return roomid;
	}
	public void setRoomid(Integer roomid) {
		this.roomid = roomid;
	}
	public Set<SinglenightBean> getSinglenight() {
		return singlenight;
	}
	public void setSinglenight(Set<SinglenightBean> singlenight) {
		this.singlenight = singlenight;
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



}
