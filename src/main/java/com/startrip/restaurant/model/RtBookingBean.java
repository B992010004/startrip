package com.startrip.restaurant.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.startrip.member.memberModle.MemberBean;

@Entity
@Table(name="RtBooking")
public class RtBookingBean {

	@ManyToOne
	@JoinColumn(name="memberId", nullable=false)
	private MemberBean memberBean;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer bgId;
	private String crName;
	private String crPhone;
	private Integer bgPeople;
	private String bgDate;
	private String bgPeriod;
	private Integer cnChair;
	private Integer cnPeople;
	private String bgNote;
	private Date reTime;
	
	@Override
	public String toString() {
		return "RtBookingBean [bgId=" + bgId + ", crName=" + crName + ", crPhone=" + crPhone + ", bgPeople=" + bgPeople
				+ ", bgDate=" + bgDate + ", bgPeriod=" + bgPeriod + ", cnChair=" + cnChair + ", cnPeople=" + cnPeople
				+ ", bgNote=" + bgNote + ", reTime=" + reTime + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}

	
	public RtBookingBean(MemberBean memberBean, Integer bgId, String crName, String crPhone, Integer bgPeople,
			String bgDate, String bgPeriod, Integer cnChair, Integer cnPeople, String bgNote, Date reTime) {
		super();
		this.memberBean = memberBean;
		this.bgId = bgId;
		this.crName = crName;
		this.crPhone = crPhone;
		this.bgPeople = bgPeople;
		this.bgDate = bgDate;
		this.bgPeriod = bgPeriod;
		this.cnChair = cnChair;
		this.cnPeople = cnPeople;
		this.bgNote = bgNote;
		this.reTime = reTime;
	}

	public RtBookingBean() {
		super();

	}

	public MemberBean getMemberBean() {
		return memberBean;
	}

	public void setMemberBean(MemberBean memberBean) {
		this.memberBean = memberBean;
	}


	public Integer getBgId() {
		return bgId;
	}


	public void setBgId(Integer bgId) {
		this.bgId = bgId;
	}


	public String getCrName() {
		return crName;
	}


	public void setCrName(String crName) {
		this.crName = crName;
	}


	public String getCrPhone() {
		return crPhone;
	}


	public void setCrPhone(String crPhone) {
		this.crPhone = crPhone;
	}


	public Integer getBgPeople() {
		return bgPeople;
	}


	public void setBgPeople(Integer bgPeople) {
		this.bgPeople = bgPeople;
	}


	public String getBgDate() {
		return bgDate;
	}


	public void setBgDate(String bgDate) {
		this.bgDate = bgDate;
	}


	public String getBgPeriod() {
		return bgPeriod;
	}


	public void setBgPeriod(String bgPeriod) {
		this.bgPeriod = bgPeriod;
	}


	public Integer getCnChair() {
		return cnChair;
	}


	public void setCnChair(Integer cnChair) {
		this.cnChair = cnChair;
	}


	public Integer getCnPeople() {
		return cnPeople;
	}


	public void setCnPeople(Integer cnPeople) {
		this.cnPeople = cnPeople;
	}


	public String getBgNote() {
		return bgNote;
	}


	public void setBgNote(String bgNote) {
		this.bgNote = bgNote;
	}


	public Date getReTime() {
		return reTime;
	}


	public void setReTime(Date reTime) {
		this.reTime = reTime;
	}
	
	
	

	
}

