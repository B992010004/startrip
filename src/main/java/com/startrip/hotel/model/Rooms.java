package com.startrip.hotel.model;

import java.io.Serializable;
import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

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
	// group by
	private Integer roomtype;
	// 房型描述名稱(通常Type一樣 描述名稱應該相同)
	private String roomname;

	private Integer numberofpeople;
	private java.sql.Date opendate;
	private java.sql.Date enddate;
	private Integer basicprice;
	private String roomnote;
	private String service;
	private String facility;
	private String photoString;

	// 將service, facility的string切開
	@Transient
	private String[] serviceArr;
	@Transient
	private String[] facilityArr;
	
	@Transient
	private String photoArr[];

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

	public String getService() {
		return service;
	}

	public void setService(String service) {
		this.service = service;
	}

	public String getFacility() {
		return facility;
	}

	public void setFacility(String facility) {
		this.facility = facility;
	}

	public String[] getServiceArr() {
		return serviceArr;
	}

	public void setServiceArr(String[] serviceArr) {
		this.serviceArr = serviceArr;
	}

	public String[] getFacilityArr() {
		return facilityArr;
	}

	public void setFacilityArr(String[] facilityArr) {
		this.facilityArr = facilityArr;
	}

	public String getPhotoString() {
		return photoString;
	}

	public void setPhotoString(String photoString) {
		this.photoString = photoString;
	}

	public String[] getPhotoArr() {
		return photoArr;
	}

	public void setPhotoArr(String[] photoArr) {
		this.photoArr = photoArr;
	}

	@Override
	public String toString() {
		return "Rooms [roomid=" + roomid + ", hotelid=" + hotelid + ", roomstate=" + roomstate + ", roomtype="
				+ roomtype + ", roomname=" + roomname + ", numberofpeople=" + numberofpeople + ", opendate=" + opendate
				+ ", enddate=" + enddate + ", basicprice=" + basicprice + ", roomnote=" + roomnote + ", service="
				+ service + ", facility=" + facility + ", photoString=" + photoString + ", serviceArr="
				+ Arrays.toString(serviceArr) + ", facilityArr=" + Arrays.toString(facilityArr) + ", photoArr="
				+ Arrays.toString(photoArr) + "]";
	}



}
