package com.startrip.travelPlan.travelAll.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.travelPlan.travelView.model.TravelViewBean;

@Entity
@Table(name="TravelPlan")
public class TravelAllBean {

	private int travelId;//pk
	private String travelName;
	private java.sql.Date startDate;
	private java.sql.Date endDate;
	private int travelDays;
	
	private MemberBean mailBean;//fk
	private Set<TravelViewBean> Views;
	private Set<MemberBean> travels;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) 
	public int getTravelId() {
		return travelId;
	}
	public void setTravelId(int travelId) {
		this.travelId = travelId;
	}
	public String getTravelName() {
		return travelName;
	}
	public void setTravelName(String travelName) {
		this.travelName = travelName;
	}
	public java.sql.Date getStartDate() {
		return startDate;
	}
	public void setStartDate(java.sql.Date startDate) {
		this.startDate = startDate;
	}
	public java.sql.Date getEndDate() {
		return endDate;
	}
	public void setEndDate(java.sql.Date endDate) {
		this.endDate = endDate;
	}
	public int getTravelDays() {
		return travelDays;
	}
	public void setTravelDays(int travelDays) {
		this.travelDays = travelDays;
	}
	
	//memberId關連到MemeberBean的memberId
		@ManyToOne
		@JoinColumn(name="mail",referencedColumnName="mail",insertable=true,updatable=false)
	public MemberBean getMailBean() {
		return mailBean;
	}
	public void setMailBean(MemberBean mailBean) {
		this.mailBean = mailBean;
	}
	
	//將travel_Id加入TravelList,view_Id關連到TravelViewBean的PK
		@ManyToMany
		@JoinTable(name="TravelList",joinColumns=@JoinColumn(name="travel_Id"),inverseJoinColumns=@JoinColumn(name="view_Id"))
	public Set<TravelViewBean> getViews() {
		return Views;
	}
	public void setViews(Set<TravelViewBean> views) {
		Views = views;
	}
	//將travel_Id加入travelCollection,member_Id關連到MemberBean的PK
	@ManyToMany
	@JoinTable(name="travelCollection",joinColumns=@JoinColumn(name="travel_Id"),inverseJoinColumns=@JoinColumn(name="member_Mail"))
	public Set<MemberBean> getTravels() {
		return travels;
	}
	public void setTravels(Set<MemberBean> travels) {
		this.travels = travels;
	}
	
	
	
	
}
