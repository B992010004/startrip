package com.startrip.travelPlan.model;

import java.sql.Date;
import java.sql.Time;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

@Entity
@Table(name="TravelList")
public class TravelListBean {
	
	
	public TravelListBean() {
		
	}

	@Override
	public String toString() {
		return "TravelListBean [viewName=" + viewName + ", StartTime=" + startTime + ", endTime=" + endTime
				+ ", travelType=" + travelType + ", travelName=" + travelName + ", listId=" + listId + ", travelId="
				+ travelId + ", viewid=" + viewid + ", tripday=" + tripday + ", state=" + state + "]";
	}
	private String viewName;
	private String  startTime;
	private String  endTime;
	private String travelType;
	private String travelName;
	private Integer listId;
	

	private Integer travelId;
	
	
	private String viewid;
	
	private Integer tripday;
	private Integer state;
	
	
	
	
	
	public TravelListBean(String viewName, String startTime, String endTime, String travelType, String travelName,
			Integer listId, Integer travelId, String viewid, Integer tripday, Integer state) {
		super();
		this.viewName = viewName;
		this.startTime = startTime;
		this.endTime = endTime;
		this.travelType = travelType;
		this.travelName = travelName;
		this.listId = listId;
		this.travelId = travelId;
		this.viewid = viewid;
		this.tripday = tripday;
		this.state = state;
	}

	public String getViewName() {
		return viewName;
	}
	public void setViewName(String viewName) {
		this.viewName = viewName;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
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

	
	public Integer getTravelId() {
		return travelId;
	}
	public void setTravelId(Integer travelId) {
		this.travelId = travelId;
	}
	public String getViewid() {
		return viewid;
	}
	public void setViewid(String viewid) {
		this.viewid = viewid;
	}
	public Integer getTripday() {
		return tripday;
	}
	public void setTripday(Integer tripday) {
		this.tripday = tripday;
	}
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getListId() {
		return listId;
	}
	public void setListId(Integer listId) {
		this.listId = listId;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	

	
	

}
