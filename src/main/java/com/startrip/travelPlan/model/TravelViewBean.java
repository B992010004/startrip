package com.startrip.travelPlan.model;

import java.util.Arrays;
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
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;

import com.startrip.member.memberModle.MemberBean;

//進入點,table=TravelView
@Entity
@Table(name="TravelView")
public class TravelViewBean {
	//pk,流水號,colum=viewid
	
	private int viewid;
	
	
	
	private MultipartFile[] imgSrc;
	private String imgName;
	

	private Integer memberId;
	private String viewName;
	private String viewaddr;
	private String viewPhone;
	private String orgclass;
	private java.sql.Date tdate;
	private String viewDetail;
//	private MemberBean viewMail;
//	private Set<TravelAllBean> travels;
//	private Set<MemberBean> mails;
	
	
	
	public TravelViewBean() {
		
	}
	
	
	
//	@Override
//	public String toString() {
//		return "TravelViewBean [viewid=" + viewid + ", imgSrc=" + Arrays.toString(imgSrc) + ", imgName=" + imgName
//				+ ", viewMail=" + viewMail + ", mail=" + mail + ", viewName=" + viewName + ", viewaddr=" + viewaddr
//				+ ", viewPhone=" + viewPhone + ", orgclass=" + orgclass + ", tdate=" + tdate + ", viewDetail="
//				+ viewDetail + ", travels=" + travels + "]";
//	}



	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) 
	public int getViewid() {
		return viewid;
	}
	public void setViewid(int viewid) {
		this.viewid = viewid;
	}
	
	
	public Integer getMemberId() {
		return memberId;
	}

	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}
	
	
	@Transient
	@XmlTransient
	public MultipartFile[] getImgSrc() {
		return imgSrc;
	}

	public void setImgSrc(MultipartFile[] imgSrc) {
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
	
	

	public String getViewDetail() {
		return viewDetail;
	}

	public void setViewDetail(String viewDetail) {
		this.viewDetail = viewDetail;
	}

	public String getImgName() {
		return imgName;
	}

	public void setImgName(String imgName) {
		this.imgName = imgName;
	}



	@Override
	public String toString() {
		return "TravelViewBean [viewid=" + viewid + ", imgSrc=" + Arrays.toString(imgSrc) + ", imgName=" + imgName
				+ ", memberId=" + memberId + ", viewName=" + viewName + ", viewaddr=" + viewaddr + ", viewPhone="
				+ viewPhone + ", orgclass=" + orgclass + ", viewDetail=" + viewDetail + "]";
	}
	
	
	
//	public Set<MemberBean> getMails() {
//		return mails;
//	}
//
//	public void setMails(Set<MemberBean> mails) {
//		this.mails = mails;
//	}

	
	
	
	

	//將view Id 加入TravelList,tavelId關連到TravelAllBean的PK
//	@ManyToMany
//	@JoinTable(name="TravelList",joinColumns=@JoinColumn(name="view_Id"),inverseJoinColumns=@JoinColumn(name="travel_Id"))
//	public Set<TravelAllBean> getTravels() {
//		return travels;
//	}
//	public void setTravels(Set<TravelAllBean> travels) {
//		this.travels = travels;
//	}



	//關聯MemberBean,
	//name=本Bean memederId,referencedColumnName=MemberBean的屬性,
//	@ManyToOne
//	@JoinColumn(name="mail",referencedColumnName="mail",insertable=false,updatable=false,unique=false)
//	public MemberBean getViewMail() {
//		return viewMail;
//	}
//	public void setViewMail(MemberBean viewMail) {
//		this.viewMail = viewMail;
//	}
//	
	
	
}

