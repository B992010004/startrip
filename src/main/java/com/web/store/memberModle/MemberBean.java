package com.web.store.memberModle;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement
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