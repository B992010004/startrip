package com.startrip.hotel.model.persistent;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity(name="roomstate")
public class RoomstateBean implements Serializable{

	private static final long serialVersionUID = 8445459242224212296L;

	public RoomstateBean() {
	}
	@Id
	private Integer stateid;	
	private String statename;
	public Integer getStateid() {
		return stateid;
	}
	public void setStateid(Integer stateid) {
		this.stateid = stateid;
	}
	public String getStatename() {
		return statename;
	}
	public void setStatename(String statename) {
		this.statename = statename;
	}
	@Override
	public String toString() {
		return "RoomstateBean [stateid=" + stateid + ", statename=" + statename + "]";
	}


}
