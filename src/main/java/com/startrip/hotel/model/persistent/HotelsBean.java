package com.startrip.hotel.model.persistent;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
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

@Entity(name = "hotels")
public class HotelsBean implements Serializable{
	private static final long serialVersionUID = -2333660904250123305L;

	public static void main(String[] args) {
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure("/com/startrip/hotel/model/persistent/hibernateTest.cfg.xml").build();
		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();
		
		HotelsBean bean = new HotelsBean();
		bean.setHotelmanagerid(1);
		bean.setHotelname("HAHA");
		session.save(bean);
		
		session.getTransaction().commit();
		session.close();
		factory.close();
	}

	private Integer hotelmanagerid;
	
	@ManyToOne
	@JoinColumn(name="hotelmanagerid",referencedColumnName="memberid", insertable=false,updatable=false)
	private MemberBean member;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer hotelid;
	
	@OneToMany(mappedBy="hotelid")
	private Set<RoomtypeBean> roomtype;
	

	@OneToMany(mappedBy="hotelid")
	private Set<PhotoBean> photos;
	
	@OneToMany(mappedBy="hotelid")
	private Set<MainphotoBean> MainphotoBean;
	
	
	private String hotelname;
	private Integer hotelphone;
	private Integer hotelstar;
	private String hoteladdress;
	private Boolean hotelstate;
	private String hotelinfo;
	private String hotelrulenote;

	public Integer getHotelmanagerid() {
		return hotelmanagerid;
	}

	public void setHotelmanagerid(Integer hotelmanagerid) {
		this.hotelmanagerid = hotelmanagerid;
	}

	public Integer getHotelid() {
		return hotelid;
	}

	public void setHotelid(Integer hotelid) {
		this.hotelid = hotelid;
	}

	public String getHotelname() {
		return hotelname;
	}

	public void setHotelname(String hotelname) {
		this.hotelname = hotelname;
	}

	public Integer getHotelphone() {
		return hotelphone;
	}

	public void setHotelphone(Integer hotelphone) {
		this.hotelphone = hotelphone;
	}

	public Integer getHotelstar() {
		return hotelstar;
	}

	public void setHotelstar(Integer hotelstar) {
		this.hotelstar = hotelstar;
	}

	public String getHoteladdress() {
		return hoteladdress;
	}

	public void setHoteladdress(String hoteladdress) {
		this.hoteladdress = hoteladdress;
	}

	public Boolean getHotelstate() {
		return hotelstate;
	}

	public void setHotelstate(Boolean hotelstate) {
		this.hotelstate = hotelstate;
	}

	public String getHotelinfo() {
		return hotelinfo;
	}

	public void setHotelinfo(String hotelinfo) {
		this.hotelinfo = hotelinfo;
	}

	public String getHotelrulenote() {
		return hotelrulenote;
	}

	public void setHotelrulenote(String hotelrulenote) {
		this.hotelrulenote = hotelrulenote;
	}

}
