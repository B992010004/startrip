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
	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();
		
		PhotoBean bean = new PhotoBean();
		bean.setPhotonameid(1);
		bean.setPhotoepath("ssss");
		session.save(bean);
		
		session.getTransaction().commit();
		session.close();
		factory.close();
	}
	private Integer hotelid;
	
	@ManyToOne
	@JoinColumn(name="hotelid", referencedColumnName="hotelid",insertable=false,updatable=false)
	private HotelsBean hotels;
	
	private Integer photonameid;

	@ManyToOne
	@JoinColumn(name="photonameid", referencedColumnName="photonameid",insertable=false,updatable=false)
	private PhotonameBean photoname;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer photoid;
	
	@OneToMany(mappedBy="photoid")
	private Set<MainphotoBean> mainphoto;
	
	private String photoepath;
	// yyyyMMdd + hotelid + serial number
	
	private Integer photosorting;
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
	public Integer getPhotonameid() {
		return photonameid;
	}
	public void setPhotonameid(Integer photonameid) {
		this.photonameid = photonameid;
	}
	public PhotonameBean getPhotoname() {
		return photoname;
	}
	public void setPhotoname(PhotonameBean photoname) {
		this.photoname = photoname;
	}
	public Integer getPhotoid() {
		return photoid;
	}
	public void setPhotoid(Integer photoid) {
		this.photoid = photoid;
	}
	public String getPhotoepath() {
		return photoepath;
	}
	public void setPhotoepath(String photoepath) {
		this.photoepath = photoepath;
	}
	public Integer getPhotosorting() {
		return photosorting;
	}
	public void setPhotosorting(Integer photosorting) {
		this.photosorting = photosorting;
	}
	
	
	
	
}
