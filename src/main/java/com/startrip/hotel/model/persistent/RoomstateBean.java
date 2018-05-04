package com.startrip.hotel.model.persistent;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="roomstate")
public class RoomstateBean {
	
	@Id
	private Integer stateid;
	private String statename;
	
	public Integer getStateid() {
		return stateid;
	}
	public String getStatename() {
		return statename;
	}
	


}
