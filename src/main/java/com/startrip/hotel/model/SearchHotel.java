package com.startrip.hotel.model;

import java.sql.Date;

public class SearchHotel {
	private String searchSrting;
	private String checkIn;
	private String checkOut;
	private Integer personNum;

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

	@Override
	public String toString() {
		return "SearchHotel [searchSrting=" + searchSrting + ", checkIn=" + checkIn + ", checkOut=" + checkOut
				+ ", personNum=" + personNum + "]";
	}



}
