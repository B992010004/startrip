package com.startrip.hotel.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class SearchHotel {
	private String searchSrting;
	private String checkIn;
	private String checkOut;
	private Integer personNum;
	private Integer night;

	public String getSearchSrting() {
		return searchSrting;
	}

	public void setSearchSrting(String searchSrting) {
		this.searchSrting = searchSrting;
	}

	public String getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}

	public String getCheckOut() {
		return checkOut;
	}

	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}

	public Integer getPersonNum() {
		return personNum;
	}

	public void setPersonNum(Integer personNum) {
		this.personNum = personNum;
	}

	public Integer getNight() {
		SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy/MM/dd");
		java.util.Date begin = null;
		java.util.Date end = null;
		long night = 0;
		try {
			begin = format.parse(getCheckIn());
			end = format.parse(getCheckOut());
			night = (end.getTime() - begin.getTime()) / (24 * 60 * 60 * 1000);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return (int) night;
	}

	public void setNight(Integer night) {
		this.night = night;
	}

	@Override
	public String toString() {
		return "SearchHotel [searchSrting=" + searchSrting + ", checkIn=" + checkIn + ", checkOut=" + checkOut
				+ ", personNum=" + personNum + ", night=" + night + "]";
	}

}
