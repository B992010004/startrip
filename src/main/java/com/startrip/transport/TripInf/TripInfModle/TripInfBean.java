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
	private Integer Trip;
	
	private Date date;
	
	private Integer StarStation;

	private Integer EndStation;
	
	private Integer Price;
	
	private Integer SeateList;
	
	private Time StarTime;

	
	
	
	
	@Override
	public String toString() {
		return "TripInfBean [Trip=" + Trip + ", date=" + date + ", StarStation=" + StarStation + ", EndStation="
				+ EndStation + ", Price=" + Price + ", SeateList=" + SeateList + ", StarTime=" + StarTime + "]";
	}

	public Integer getTrip() {
		return Trip;
	}

	public void setTrip(Integer trip) {
		Trip = trip;
	}



	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Integer getStarStation() {
		return StarStation;
	}

	public void setStarStation(Integer starStation) {
		StarStation = starStation;
	}

	public Integer getEndStation() {
		return EndStation;
	}

	public void setEndStation(Integer endStation) {
		EndStation = endStation;
	}

	public Integer getPrice() {
		return Price;
	}

	public void setPrice(Integer price) {
		Price = price;
	}

	public Integer getSeateList() {
		return SeateList;
	}

	public void setSeateList(Integer seateList) {
		SeateList = seateList;
	}

	public Time getStarTime() {
		return StarTime;
	}

	public void setStarTime(Time starTime) {
		StarTime = starTime;
	}
	
}
