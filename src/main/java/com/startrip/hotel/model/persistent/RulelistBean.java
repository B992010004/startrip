package com.startrip.hotel.model.persistent;

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

@Entity(name = "rulelist")
public class RulelistBean implements Serializable {
	private static final long serialVersionUID = 1846305702592902315L;
	
	public RulelistBean() {
	}

	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
				.configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();

//		RulelistBean bean = new RulelistBean();
//		bean.setAdvancedayid(2);
//		bean.setHotelid(2);
//		bean.setRoomid(2);
//
//		session.save(bean);
		RulelistBean temp = session.get(RulelistBean.class, 1);
		System.out.println(temp);
		
		session.getTransaction().commit();
		session.close();
		factory.close();
	}

	private Integer hotelid;
	private Integer refundid;
	private Integer advancedayid;	

	private Integer roomid;
	// -- if roomid = null, all rooms has this rule.
	
	private Integer bookingdaysperorder;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer checknumber;

	public Integer getHotelid() {
		return hotelid;
	}

	public void setHotelid(Integer hotelid) {
		this.hotelid = hotelid;
	}

	public Integer getRefundid() {
		return refundid;
	}

	public void setRefundid(Integer refundid) {
		this.refundid = refundid;
	}

	public Integer getAdvancedayid() {
		return advancedayid;
	}

	public void setAdvancedayid(Integer advancedayid) {
		this.advancedayid = advancedayid;
	}

	public Integer getRoomid() {
		return roomid;
	}

	public void setRoomid(Integer roomid) {
		this.roomid = roomid;
	}

	public Integer getBookingdaysperorder() {
		return bookingdaysperorder;
	}

	public void setBookingdaysperorder(Integer bookingdaysperorder) {
		this.bookingdaysperorder = bookingdaysperorder;
	}

	public Integer getChecknumber() {
		return checknumber;
	}

	public void setChecknumber(Integer checknumber) {
		this.checknumber = checknumber;
	}

	@Override
	public String toString() {
		return "RulelistBean [hotelid=" + hotelid + ", refundid=" + refundid + ", advancedayid=" + advancedayid
				+ ", roomid=" + roomid + ", bookingdaysperorder=" + bookingdaysperorder + ", checknumber=" + checknumber
				+ "]";
	}

	
	
	
}
