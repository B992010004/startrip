package com.startrip.member.memberModle;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;

import com.startrip.travelPlan.travelAll.model.TravelAllBean;
import com.startrip.travelPlan.travelView.model.TravelViewBean;




@Entity
@Table(name="Membertable")
public class MemberBean {
		
	@Id
	private String mail;
	private String password;
	private String username;
	private String address;
	private int phone;
	private String birthday;
	private String avatar;
	
	//-------------------------------
	@OneToMany(mappedBy="mailBean",cascade= {CascadeType.ALL})
	private Set<TravelViewBean> ViewMB;
	@OneToMany(mappedBy="mailBean",cascade= {CascadeType.ALL})
	private Set<TravelViewBean> travelMB;
	@ManyToMany
	@JoinTable(name="travelCollection",joinColumns=@JoinColumn(name="member_Mail"),inverseJoinColumns=@JoinColumn(name="travel_Id"))
	private Set<TravelAllBean> travels;
	
	//--------------------------------
	
	
	@Transient
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int memberid;
	@Transient
	private MultipartFile  avatarImage;	
	
	@XmlTransient
	public MultipartFile getAvatarImage() {
		return avatarImage;
	}
	public void setAvatarImage(MultipartFile avatarImage) {
		this.avatarImage = avatarImage;
	}

	public int getMemberid() {
		return memberid;
	}
	public void setMemberid(int memberid) {
		this.memberid = memberid;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String fileName) {
		this.avatar = fileName;
	}
	@Override
	public String toString() {
		return "memberBaen [ password=" + password + ", username=" + username + ", address=" + address
				+ ", phone=" + phone + ", birthday=" + birthday + ", mail=" + mail + "]";
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}

	//------------------------------------------------
	public Set<TravelViewBean> getViewMB() {
		return ViewMB;
	}
	public void setViewMB(Set<TravelViewBean> viewMB) {
		ViewMB = viewMB;
	}
	public Set<TravelViewBean> getTravelMB() {
		return travelMB;
	}
	public void setTravelMB(Set<TravelViewBean> travelMB) {
		this.travelMB = travelMB;
	}
	public Set<TravelAllBean> getTravels() {
		return travels;
	}
	public void setTravels(Set<TravelAllBean> travels) {
		this.travels = travels;
	}
	
	
	//--------------------------------------------
	
}