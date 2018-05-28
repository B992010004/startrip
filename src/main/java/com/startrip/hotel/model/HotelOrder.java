package com.startrip.hotel.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class HotelOrder implements Serializable {
	private static final long serialVersionUID = 8538582177447768571L;

	public HotelOrder() {
	}

	@Id
	private String orderId;
	// orderNo.substring(0, 7)

	private Integer hotelid;
	// 多間的話我的roomid應該要是陣列
	private Integer roomid;
	private Integer memberid;
	private Integer orderstateid;
	private Integer paymentmethodid;
	private java.sql.Timestamp orderTimeStamp;
	private String ordernote;
	private Integer totalamount;
	private Integer singlenightprice;
	// -- use string to record list.
	private java.sql.Date checkin;
	private java.sql.Date checkout;

	private String lastname;
	private String firstname;
	private String email;
	private String cellphone;
	private String password;

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public Integer getHotelid() {
		return hotelid;
	}

	public void setHotelid(Integer hotelid) {
		this.hotelid = hotelid;
	}

	public Integer getMemberid() {
		return memberid;
	}

	public void setMemberid(Integer memberid) {
		this.memberid = memberid;
	}

	public Integer getOrderstateid() {
		return orderstateid;
	}

	public void setOrderstateid(Integer orderstateid) {
		this.orderstateid = orderstateid;
	}

	public Integer getPaymentmethodid() {
		return paymentmethodid;
	}

	public void setPaymentmethodid(Integer paymentmethodid) {
		this.paymentmethodid = paymentmethodid;
	}

	public java.sql.Timestamp getOrderTimeStamp() {
		return orderTimeStamp;
	}

	public void setOrderTimeStamp(java.sql.Timestamp orderTimeStamp) {
		this.orderTimeStamp = orderTimeStamp;
	}

	public String getOrdernote() {
		return ordernote;
	}

	public void setOrdernote(String ordernote) {
		this.ordernote = ordernote;
	}

	public Integer getTotalamount() {
		return totalamount;
	}

	public void setTotalamount(Integer totalamount) {
		this.totalamount = totalamount;
	}

	public Integer getSinglenightprice() {
		return singlenightprice;
	}

	public void setSinglenightprice(Integer singlenightprice) {
		this.singlenightprice = singlenightprice;
	}

	public java.sql.Date getCheckin() {
		return checkin;
	}

	public void setCheckin(java.sql.Date checkin) {
		this.checkin = checkin;
	}

	public java.sql.Date getCheckout() {
		return checkout;
	}

	public void setCheckout(java.sql.Date checkout) {
		this.checkout = checkout;
	}

	public Integer getRoomid() {
		return roomid;
	}

	public void setRoomid(Integer roomid) {
		this.roomid = roomid;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCellphone() {
		return cellphone;
	}

	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "HotelOrder [orderId=" + orderId + ", hotelid=" + hotelid + ", roomid=" + roomid + ", memberid="
				+ memberid + ", orderstateid=" + orderstateid + ", paymentmethodid=" + paymentmethodid
				+ ", orderTimeStamp=" + orderTimeStamp + ", ordernote=" + ordernote + ", totalamount=" + totalamount
				+ ", singlenightprice=" + singlenightprice + ", checkin=" + checkin + ", checkout=" + checkout
				+ ", lastname=" + lastname + ", firstname=" + firstname + ", email=" + email + ", cellphone="
				+ cellphone + ", password=" + password + "]";
	}

}
