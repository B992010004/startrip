package com.startrip.transport.TripInf.TripInfModle;

import java.io.Serializable;
import java.sql.Time;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="TripInf")

public class TripInfBean implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer trip;
	
	private Date date;
	
	private String starStation;

	private String endStation;
	
	private Integer price;
	
	private Integer seateList;
	
	private Time starTime;

	public Integer getTrip() {
		return trip;
	}

	public void setTrip(Integer trip) {
		this.trip = trip;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getStarStation() {
		return starStation;
	}

	public void setStarStation(String starStation) {
		this.starStation = starStation;
	}

	public String getEndStation() {
		return endStation;
	}

	public void setEndStation(String endStation) {
		this.endStation = endStation;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getSeateList() {
		return seateList;
	}

	public void setSeateList(Integer seateList) {
		this.seateList = seateList;
	}

	public Time getStarTime() {
		return starTime;
	}

	public void setStarTime(Time starTime) {
		this.starTime = starTime;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "TripInfBean [trip=" + trip + ", date=" + date + ", starStation=" + starStation + ", endStation="
				+ endStation + ", price=" + price + ", seateList=" + seateList + ", starTime=" + starTime + "]";
	}

	
	
}
