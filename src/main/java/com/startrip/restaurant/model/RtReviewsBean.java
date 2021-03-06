package com.startrip.restaurant.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="RtReviews")
public class RtReviewsBean {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer rwId;
	private Integer rtScore;
	private String rtTitle;
	private String rtContent;
	private Date rtVisittime;
	private String rtVisittype;
	
	@Override
	public String toString() {
		return "RtReviewsBean [rwId=" + rwId + ", rtScore=" + rtScore + ", rtTitle=" + rtTitle + ", rtContent="
				+ rtContent + ", rtVisittime=" + rtVisittime + ", rtVisittype=" + rtVisittype + "]";
	}

	public RtReviewsBean(Integer rwId, Integer rtScore, String rtTitle, String rtContent, Date rtVisittime,
			String rtVisittype) {
		super();
		this.rwId = rwId;
		this.rtScore = rtScore;
		this.rtTitle = rtTitle;
		this.rtContent = rtContent;
		this.rtVisittime = rtVisittime;
		this.rtVisittype = rtVisittype;
	}

	public RtReviewsBean() {
		super();
	}

	public Integer getRwId() {
		return rwId;
	}

	public void setRwId(Integer rwId) {
		this.rwId = rwId;
	}

	public Integer getRtScore() {
		return rtScore;
	}

	public void setRtScore(Integer rtScore) {
		this.rtScore = rtScore;
	}

	public String getRtTitle() {
		return rtTitle;
	}

	public void setRtTitle(String rtTitle) {
		this.rtTitle = rtTitle;
	}

	public String getRtContent() {
		return rtContent;
	}

	public void setRtContent(String rtContent) {
		this.rtContent = rtContent;
	}

	public Date getRtVisittime() {
		return rtVisittime;
	}

	public void setRtVisittime(Date rtVisittime) {
		this.rtVisittime = rtVisittime;
	}

	public String getRtVisittype() {
		return rtVisittype;
	}

	public void setRtVisittype(String rtVisittype) {
		this.rtVisittype = rtVisittype;
	}
	
	
	
}

