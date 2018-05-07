package com.startrip.travelPlan.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

@Entity
@Table(name="TravelList")
public class TravelListBean {
	
	private String viewName;
	private java.sql.Date  StartTime;
	private java.sql.Date  endTime;
	private String travelType;
	private String travelName;
	private Integer listId;
	


	private int travelId;
	
	
	private int viewid;
	
	private int tripday;
	
	
	
	
	public TravelListBean() {
		
	}
	public TravelListBean(String viewName, Date startTime, Date endTime, String tripType, String tripname, int travelId,
			int tripday, int viewid) {
	
		this.viewName = viewName;
		this.StartTime = startTime;
		this.endTime = endTime;
		this.travelType = tripType;
		this.travelName = tripname;
		this.travelId = travelId;
		this.tripday = tripday;
		this.viewid = viewid;
	}
	public String getViewName() {
		return viewName;
	}
	public void setViewName(String viewName) {
		this.viewName = viewName;
	}
	public java.sql.Date getStartTime() {
		return StartTime;
	}
	public void setStartTime(java.sql.Date startTime) {
		StartTime = startTime;
	}
	public java.sql.Date getEndTime() {
		return endTime;
	}
	public void setEndTime(java.sql.Date endTime) {
		this.endTime = endTime;
	}
	public String getTravelType() {
		return travelType;
	}
	public void setTravelType(String travelType) {
		this.travelType = travelType;
	}
	public String getTravelName() {
		return travelName;
	}
	public void setTravelName(String travelName) {
		this.travelName = travelName;
	}

	public int getTravelId() {
		return travelId;
	}
	public void setTravelId(int travelId) {
		this.travelId = travelId;
	}

	public int getViewid() {
		return viewid;
	}
	public void setViewid(int viewid) {
		this.viewid = viewid;
	}
	public int getTripday() {
		return tripday;
	}
	public void setTripday(int tripday) {
		this.tripday = tripday;
	}
	@Id
	public Integer getListId() {
		return listId;
	}
	public void setListId(Integer listId) {
		this.listId = listId;
	}

	
	

}
