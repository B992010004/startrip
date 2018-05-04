package com.startrip.member.memberModle;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;




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

	
}