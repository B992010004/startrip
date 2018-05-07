package com.startrip.travelPlan.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TravelPlan")
public class TravelAllBean {

	private Integer travelId;// pk
	private String travelName;
	private java.sql.Date startDate;
	private java.sql.Date endDate;
	private int travelDays;
	private String mail;

//	private MemberBean travelMail;// fk
//	private Set<TravelViewBean> Views;
//	private Set<MemberBean> travels;

	public TravelAllBean() {
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getTravelId() {
		return travelId;
	}

	public String getTravelName() {
		return travelName;
	}

	public java.sql.Date getStartDate() {
		return startDate;
	}

	public java.sql.Date getEndDate() {
		return endDate;
	}

	public int getTravelDays() {
		return travelDays;
	}
	
	public String getMail() {
		return mail;
	}
	

	public void setTravelId(int travelId) {
		this.travelId = travelId;
	}

	public void setTravelName(String travelName) {
		this.travelName = travelName;
	}

	public void setStartDate(java.sql.Date startDate) {
		this.startDate = startDate;
	}

	public void setEndDate(java.sql.Date endDate) {
		this.endDate = endDate;
	}

	public void setTravelDays(int travelDays) {
		this.travelDays = travelDays;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	@Override
	public String toString() {
		return "TravelAllBean [travelId=" + travelId + ", travelName=" + travelName + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", travelDays=" + travelDays + ", mail=" + mail + "]";
	}
	
	
	
	

//	// memberId關連到MemeberBean的memberId
//	
//	public void setTravelMail(MemberBean travelMail) {
//		this.travelMail = travelMail;
//	}
//
//	public void setViews(Set<TravelViewBean> views) {
//		Views = views;
//	}

	// 將travel_Id加入travelCollection,member_Id關連到MemberBean的PK
//	@ManyToMany
//	@JoinTable(name = "travelCollection", joinColumns = @JoinColumn(name = "travel_Id"), inverseJoinColumns = @JoinColumn(name = "member_Mail"))
//	public Set<MemberBean> getTravels() {
//		return travels;
//	}
//
//	public void setTravels(Set<MemberBean> travels) {
//		this.travels = travels;
//	}
//
//	@Override
//	public String toString() {
//		return "TravelAllBean [travelId=" + travelId + ", travelName=" + travelName + ", startDate=" + startDate
//				+ ", endDate=" + endDate + ", travelDays=" + travelDays + ", mail=" + mail + "]";
//	}

//	//insalable=false 不能新增
//	@ManyToOne
//	@JoinColumn(name = "mail", referencedColumnName = "mail")
//	public MemberBean getTravelMail() {
//		return travelMail;
//	}
//
//	// 將travel_Id加入TravelList,view_Id關連到TravelViewBean的PK
//	@ManyToMany(cascade=CascadeType.ALL)
//	@JoinTable(name = "TravelList", joinColumns = @JoinColumn(name = "travel_Id"), inverseJoinColumns = @JoinColumn(name = "view_Id"))
//	public Set<TravelViewBean> getViews() {
//		return Views;
//	}
}
