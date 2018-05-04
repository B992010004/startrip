package com.startrip.hotel.model.persistent;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="member")
public class MemberBean implements Serializable{

	private static final long serialVersionUID = 1063990249709170616L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer memberid;

	@OneToMany(mappedBy="hotelmanagerid")
	private Set<HotelsBean> hotels;
	
	@OneToMany(mappedBy="memberid")
	private Set<MemberorderBean> memberorder;
	
	private String membername;
	private String memberemail;
	private String memberpassword;
	private Integer memberphone;
	public Integer getMemberid() {
		return memberid;
	}
	public void setMemberid(Integer memberid) {
		this.memberid = memberid;
	}
	public Set<HotelsBean> getHotels() {
		return hotels;
	}
	public void setHotels(Set<HotelsBean> hotels) {
		this.hotels = hotels;
	}
	public String getMembername() {
		return membername;
	}
	public void setMembername(String membername) {
		this.membername = membername;
	}
	public String getMemberemail() {
		return memberemail;
	}
	public void setMemberemail(String memberemail) {
		this.memberemail = memberemail;
	}
	public String getMemberpassword() {
		return memberpassword;
	}
	public void setMemberpassword(String memberpassword) {
		this.memberpassword = memberpassword;
	}
	public Integer getMemberphone() {
		return memberphone;
	}
	public void setMemberphone(Integer memberphone) {
		this.memberphone = memberphone;
	}
	
	
	
}
