package com.startrip.hotel.model.persistent;

import java.io.Serializable;
import java.util.Set;

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

@Entity(name="photo")
public class PhotoBean implements Serializable{

	private static final long serialVersionUID = 2239193847300701964L;
	
	
	public PhotoBean() {
	}
	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();
		
		PhotoBean bean = new PhotoBean();
		bean.setPhotonameid(1);
		session.save(bean);
		System.out.println("---------------");
		PhotoBean temp = session.get(PhotoBean.class, 1);
		System.out.println(temp);
		
		session.getTransaction().commit();
		session.close();
		factory.close();
	}
	private Integer hotelid;
	private Integer photonameid;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer photoid;
	private String filename;
	private Integer roomid;
	private Boolean hotelmainphoto;
	
	private Integer photosorting;


	public Integer getHotelid() {
		return hotelid;
	}
	public void setHotelid(Integer hotelid) {
		this.hotelid = hotelid;
	}
	public Integer getPhotonameid() {
		return photonameid;
	}
	public void setPhotonameid(Integer photonameid) {
		this.photonameid = photonameid;
	}
	public Integer getPhotoid() {
		return photoid;
	}
	public void setPhotoid(Integer photoid) {
		this.photoid = photoid;
	}

	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public Integer getPhotosorting() {
		return photosorting;
	}
	public void setPhotosorting(Integer photosorting) {
		this.photosorting = photosorting;
	}
	public Integer getRoomid() {
		return roomid;
	}
	public void setRoomid(Integer roomid) {
		this.roomid = roomid;
	}
	public Boolean getHotelmainphoto() {
		return hotelmainphoto;
	}
	public void setHotelmainphoto(Boolean hotelmainphoto) {
		this.hotelmainphoto = hotelmainphoto;
	}
	@Override
	public String toString() {
		return "PhotoBean [hotelid=" + hotelid + ", photonameid=" + photonameid + ", photoid=" + photoid + ", filename="
				+ filename + ", roomid=" + roomid + ", hotelmainphoto=" + hotelmainphoto + ", photosorting="
				+ photosorting + "]";
	}



	
}
