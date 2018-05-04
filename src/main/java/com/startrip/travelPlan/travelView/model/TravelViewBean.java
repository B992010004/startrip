package com.startrip.travelPlan.travelView.model;

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
import javax.persistence.Transient;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.travelPlan.travelAll.model.TravelAllBean;

//進入點,table=TravelView
@Entity
@Table(name="TravelView")
public class TravelViewBean {
	//pk,流水號,colum=viewid
	
	private int viewid;
	
	
	
	private Integer imgSrc;
	private MemberBean member;
	private Integer memberId;
	private String viewName;
	private String viewaddr;
	private String viewPhone;
	private String orgclass;
	private java.sql.Date tdate;
	private String viewDetail;
	private Set<TravelAllBean> travels;
	private Set<MemberBean> members;
	
	
	
	public TravelViewBean() {
		
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) 
	public int getViewid() {
		return viewid;
	}
	public void setViewid(int viewid) {
		this.viewid = viewid;
	}
	
	@Transient
	public Integer getMemberId() {
		return memberId;
	}

	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}
	//關聯MemberBean,memberid
	//name=本Bean memederId,referencedColumnName=MemberBean的屬性,
	@ManyToOne
	@JoinColumn(name="memberId",referencedColumnName="memberId",insertable=true,updatable=false)
	public MemberBean getMember() {
		
		return member;
	}
	public void setMember(MemberBean member) {
		this.member = member;
	}
	
	
	
	
	public Integer getImgSrc() {
		return imgSrc;
	}

	public void setImgSrc(Integer imgSrc) {
		this.imgSrc = imgSrc;
	}

	public String getViewName() {
		return viewName;
	}
	public void setViewName(String viewName) {
		this.viewName = viewName;
	}
	public String getViewaddr() {
		return viewaddr;
	}
	public void setViewaddr(String viewaddr) {
		this.viewaddr = viewaddr;
	}
	public String getViewPhone() {
		return viewPhone;
	}
	public void setViewPhone(String viewPhone) {
		this.viewPhone = viewPhone;
	}

	public String getOrgclass() {
		return orgclass;
	}
	public void setOrgclass(String orgclass) {
		this.orgclass = orgclass;
	}
	
	public java.sql.Date getTdate() {
		return tdate;
	}
	public void setTdate(java.sql.Date tdate) {
		this.tdate = tdate;
	}
	
	
	//將view Id 加入TravelList,tavelId關連到TravelAllBean的PK
	@ManyToMany
	@JoinTable(name="TravelList",joinColumns=@JoinColumn(name="view_Id"),inverseJoinColumns=@JoinColumn(name="travel_Id"))
	public Set<TravelAllBean> getTravels() {
		return travels;
	}
	public void setTravels(Set<TravelAllBean> travels) {
		this.travels = travels;
	}

	public String getViewDetail() {
		return viewDetail;
	}

	public void setViewDetail(String viewDetail) {
		this.viewDetail = viewDetail;
	}
	//將view Id 加入ViewCollection,member_Id關連到MemberBean的PK
	@ManyToMany
	@JoinTable(name="ViewCollection",joinColumns=@JoinColumn(name="view_Id"),inverseJoinColumns=@JoinColumn(name="member_Id"))
	public Set<MemberBean> getMembers() {
		return members;
	}

	public void setMembers(Set<MemberBean> members) {
		this.members = members;
	}

	
	
	
	




	
	
}

////	@Transient
//	
//	public Integer getViewImageId() {
//		return viewImageId;
//	}
//
//	public void setViewImageId(Integer viewImageId) {
//		this.viewImageId = viewImageId;
//	}



//	@OneToMany(mappedBy="viewImage",cascade= {CascadeType.ALL})
//	public Set<viewSourceCollection> getImageIds() {
//		return ImageIds;
//	}
//	
//	public void setImageIds(Set<viewSourceCollection> imageIds) {
//		ImageIds = imageIds;
//	}