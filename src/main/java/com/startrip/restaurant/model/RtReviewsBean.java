package com.startrip.restaurant.model;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "RtReviews")
public class RtReviewsBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer rtId;
	Integer rtScore;
	String rtTitle;
	String rtContent;
	Timestamp rtVisittime;
	String rtVisittype;
	
	
	public RtReviewsBean(Integer rtId, Integer rtScore, String rtTitle, String rtContent, Timestamp rtVisittime,
			String rtVisittype) {
		super();
		this.rtId = rtId;
		this.rtScore = rtScore;
		this.rtTitle = rtTitle;
		this.rtContent = rtContent;
		this.rtVisittime = rtVisittime;
		this.rtVisittype = rtVisittype;
	}

	public RtReviewsBean() {
		super();
	}

	@Override
	public String toString() {
		return "RtReviewsBean [rtId=" + rtId + ", rtScore=" + rtScore + ", rtTitle=" + rtTitle + ", rtContent="
				+ rtContent + ", rtVisittime=" + rtVisittime + ", rtVisittype=" + rtVisittype + "]";
	}

	public Integer getRtId() {
		return rtId;
	}

	public void setRtId(Integer rtId) {
		this.rtId = rtId;
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

	public Timestamp getRtVisittime() {
		return rtVisittime;
	}

	public void setRtVisittime(Timestamp rtVisittime) {
		this.rtVisittime = rtVisittime;
	}

	public String getRtVisittype() {
		return rtVisittype;
	}

	public void setRtVisittype(String rtVisittype) {
		this.rtVisittype = rtVisittype;
	}
	
	
	
}
