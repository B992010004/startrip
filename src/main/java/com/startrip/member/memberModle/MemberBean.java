package com.startrip.member.memberModle;

import java.io.Serializable;
import java.sql.Blob;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.startrip.reviews.model.HotelReview;

@Entity
@Table(name = "Membertable")
public class MemberBean implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer memberid;

	private String mail;
	private String password;

	private String username;
	private String address;
	private String phone;
	private String birthday;
	private String avatar;
	private Date registerDate;
	private String validataCode;

	@JsonIgnore
	private Blob photo;
	@Transient
	private MultipartFile avatarImage;

	@XmlTransient
	public Blob getPhoto() {
		return photo;
	}

	public Date getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}

	public String getValidataCode() {
		return validataCode;
	}

	public void setValidataCode(String validataCode) {
		this.validataCode = validataCode;
	}

	public void setPhoto(Blob photo) {
		this.photo = photo;
	}

	@OneToMany(cascade = { CascadeType.REMOVE }, mappedBy = "memberBean")
	private Set<HotelReview> reviewBeans;

	// -------------------------------
	// @OneToMany(mappedBy="viewMail",cascade= {CascadeType.ALL})
	// private Set<TravelViewBean> ViewMB;
	////
	// @OneToMany(mappedBy="travelMail",cascade= {CascadeType.ALL})
	// private Set<TravelAllBean> travelMB;
	////
	// @ManyToMany
	// @JoinTable(name="travelCollection",joinColumns=@JoinColumn(name="member_Mail"),inverseJoinColumns=@JoinColumn(name="travel_Id"))
	// private Set<TravelAllBean> travels;
	//
	// --------------------------------

	@XmlTransient
	public MultipartFile getAvatarImage() {
		return avatarImage;
	}

	public void setAvatarImage(MultipartFile avatarImage) {
		this.avatarImage = avatarImage;
	}

	public Integer getMemberid() {
		return memberid;
	}

	public void setMemberid(Integer memberid) {
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
		return "MemberBean [mail=" + mail + ", password=" + password + ", username=" + username + ", address=" + address
				+ ", phone=" + phone + ", birthday=" + birthday + ", avatar=" + avatar + ", registerDate="
				+ registerDate + ", validataCode=" + validataCode + ", photo=" + photo + "]";
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
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

	// ------------------------------------------------
	// public Set<TravelViewBean> getViewMB() {
	// return ViewMB;
	// }
	// public void setViewMB(Set<TravelViewBean> viewMB) {
	// ViewMB = viewMB;
	// }

	// public Set<TravelAllBean> getTravels() {
	// return travels;
	// }
	// public void setTravels(Set<TravelAllBean> travels) {
	// this.travels = travels;
	// }

	// --------------------------------------------

}