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
	
	public MemberorderBean() {
	}
	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();
		
		MemberorderBean bean = new MemberorderBean();
		bean.setOrdernumber(201805020001L);
		session.save(bean);
		System.out.println("-------");
		MemberorderBean temp = session.get(MemberorderBean.class, 201805020001L);
		System.out.println(temp);
		System.out.println("-------");
		session.delete(bean);
		
		session.getTransaction().commit();
		session.close();
		factory.close();
	}

	@Id
	private Long ordernumber;
	// yyyyMMdd + serial number
	
	private Integer hotelid;		
	private Integer memberid;	
	private Integer orderstateid;	
	private Integer paymentmethodid;	
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
	@Override
	public String toString() {
		return "MemberorderBean [ordernumber=" + ordernumber + ", hotelid=" + hotelid + ", memberid=" + memberid
				+ ", orderstateid=" + orderstateid + ", paymentmethodid=" + paymentmethodid + ", orderdate=" + orderdate
				+ ", ordernote=" + ordernote + ", totalamount=" + totalamount + ", singlenightprice=" + singlenightprice
				+ ", checkin=" + checkin + ", checkout=" + checkout + "]";
	}
	
	
	
	
	
}
