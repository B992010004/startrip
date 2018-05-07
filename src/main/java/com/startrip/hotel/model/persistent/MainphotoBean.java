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

@Entity(name = "mainphoto")
public class MainphotoBean implements Serializable {
	private static final long serialVersionUID = -2931993366620449837L;

	public MainphotoBean() {
	}

	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
				.configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();

		MainphotoBean bean = new MainphotoBean();
		// bean.setHotelid(1);
		// bean.setRoomid(6);
		// session.save(bean);
		System.out.println("------------");
		MainphotoBean temp = session.get(MainphotoBean.class, 8);
		System.out.println(temp);

		session.getTransaction().commit();
		session.close();
		factory.close();
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer checknumber;
	private Integer hotelid;
	private Integer roomid;
	private Integer photoid;

	public Integer getChecknumber() {
		return checknumber;
	}

	public void setChecknumber(Integer checknumber) {
		this.checknumber = checknumber;
	}

	public Integer getHotelid() {
		return hotelid;
	}

	public void setHotelid(Integer hotelid) {
		this.hotelid = hotelid;
	}

	public Integer getRoomid() {
		return roomid;
	}

	public void setRoomid(Integer roomid) {
		this.roomid = roomid;
	}

	public Integer getPhotoid() {
		return photoid;
	}

	public void setPhotoid(Integer photoid) {
		this.photoid = photoid;
	}

	@Override
	public String toString() {
		return "MainphotoBean [checknumber=" + checknumber + ", hotelid=" + hotelid + ", roomid=" + roomid
				+ ", photoid=" + photoid + "]";
	}

	

}
