package com.startrip.hotel.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

@Entity
public class Rooms implements Serializable {

	private static final long serialVersionUID = -7434598944388707416L;

	public Rooms() {
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer roomid;

	// fk
	private Integer hotelid;

	// 設定1為可訂
	private Integer roomstate;

	// 房型之類的
	private Integer roomtype;
	// 房型描述名稱
	private String roomname;

	private Integer numberofpeople;
	private java.sql.Date opendate;
	private java.sql.Date enddate;
	private Integer basicprice;
	private String roomnote;

	public Integer getRoomid() {
		return roomid;
	}

	public void setRoomid(Integer roomid) {
		this.roomid = roomid;
	}

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

	public Integer getRoomtype() {
		return roomtype;
	}

	public void setRoomtype(Integer roomtype) {
		this.roomtype = roomtype;
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
		return "Rooms [roomid=" + roomid + ", hotelid=" + hotelid + ", roomstate=" + roomstate + ", roomtype="
				+ roomtype + ", roomname=" + roomname + ", numberofpeople=" + numberofpeople + ", opendate=" + opendate
				+ ", enddate=" + enddate + ", basicprice=" + basicprice + ", roomnote=" + roomnote + "]";
	}

}
