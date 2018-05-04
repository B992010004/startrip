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

@Entity(name = "rulelist")
public class RulelistBean implements Serializable {
	private static final long serialVersionUID = 1846305702592902315L;
	
	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
				.configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();

		RulelistBean bean = new RulelistBean();
		bean.setAdvancedayid(1);
		bean.setHotelid(2);
		bean.setRoomid(2);

		session.save(bean);

		session.getTransaction().commit();
		session.close();
		factory.close();
	}

	private Integer hotelid;
	
	@ManyToOne
	@JoinColumn(name = "hotelid", referencedColumnName = "hotelid", insertable = false, updatable = false)
	private HotelsBean hotels;

	private Integer refundid;
	
	@ManyToOne
	@JoinColumn(name = "refundid", referencedColumnName = "refundid", insertable = false, updatable = false)
	private RefundBean refund;

	private Integer advancedayid;
	
	@ManyToOne
	@JoinColumn(name = "advancedayid", referencedColumnName = "advancedayid", insertable = false, updatable = false)
	private AdvancedayBean advanceday;

	private Integer roomid;
	// -- if roomid = null, all rooms has this rule.
	
	@ManyToOne
	@JoinColumn(name = "roomid", referencedColumnName = "roomid", insertable = false, updatable = false)
	private RoomtypeBean roomtype;

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

	public HotelsBean getHotels() {
		return hotels;
	}

	public void setHotels(HotelsBean hotels) {
		this.hotels = hotels;
	}

	public Integer getRefundid() {
		return refundid;
	}

	public void setRefundid(Integer refundid) {
		this.refundid = refundid;
	}

	public RefundBean getRefund() {
		return refund;
	}

	public void setRefund(RefundBean refund) {
		this.refund = refund;
	}

	public Integer getAdvancedayid() {
		return advancedayid;
	}

	public void setAdvancedayid(Integer advancedayid) {
		this.advancedayid = advancedayid;
	}

	public AdvancedayBean getAdvanceday() {
		return advanceday;
	}

	public void setAdvanceday(AdvancedayBean advanceday) {
		this.advanceday = advanceday;
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

}
