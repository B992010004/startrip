package com.startrip.hotel.model.persistent;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

@Entity(name = "memberorder")
public class MemberorderBean implements Serializable {
	private static final long serialVersionUID = 8538582177447768571L;
	
	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();
		
		MemberorderBean bean = new MemberorderBean();
		bean.setOrdernumber(201805030001L);
		session.save(bean);
		
		session.getTransaction().commit();
		session.close();
		factory.close();
	}

	@Id
	private Long ordernumber;
	// yyyyMMdd + serial number
	
	private Integer hotelid;
	
	@ManyToOne
	@JoinColumn(name="hotelid", referencedColumnName="hotelid",insertable=false,updatable=false)
	private HotelsBean hotels;
	
	private Integer memberid;
	
	@ManyToOne
	@JoinColumn(name="memberid", referencedColumnName="memberid",insertable=false,updatable=false)
	private MemberBean member;
	
	private Integer orderstateid;
	
	@ManyToOne
	@JoinColumn(name="orderstateid", referencedColumnName="orderstateid",insertable=false, updatable=false)
	private OrderstateBean orderstate;
	
	private Integer paymentmethodid;
	
	@ManyToOne
	@JoinColumn(name="paymentmethodid", referencedColumnName="methodid",insertable=false, updatable=false)
	private PaymentmethodBean paymentmethod;
	
	
	private java.sql.Date orderdate;
	private String ordernote;
	private Integer totalamount;
	private String singlenightprice;
	// -- use string to record list.
	private java.sql.Date checkin;
	private java.sql.Date checkout;
	public Long getOrdernumber() {
		return ordernumber;
	}
	public void setOrdernumber(Long ordernumber) {
		this.ordernumber = ordernumber;
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
	public Integer getOrderstateid() {
		return orderstateid;
	}
	public void setOrderstateid(Integer orderstateid) {
		this.orderstateid = orderstateid;
	}
	public OrderstateBean getOrderstate() {
		return orderstate;
	}
	public void setOrderstate(OrderstateBean orderstate) {
		this.orderstate = orderstate;
	}
	public Integer getPaymentmethodid() {
		return paymentmethodid;
	}
	public void setPaymentmethodid(Integer paymentmethodid) {
		this.paymentmethodid = paymentmethodid;
	}
	public PaymentmethodBean getPaymentmethod() {
		return paymentmethod;
	}
	public void setPaymentmethod(PaymentmethodBean paymentmethod) {
		this.paymentmethod = paymentmethod;
	}
	public java.sql.Date getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(java.sql.Date orderdate) {
		this.orderdate = orderdate;
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
	public String getSinglenightprice() {
		return singlenightprice;
	}
	public void setSinglenightprice(String singlenightprice) {
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

	
	
}
