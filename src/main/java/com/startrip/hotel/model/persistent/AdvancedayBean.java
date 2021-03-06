package com.startrip.hotel.model.persistent;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name = "advanceday")
public class AdvancedayBean implements Serializable {

	private static final long serialVersionUID = 6375349337563027399L;

	public AdvancedayBean() {
	}

	@Id
	private Integer advancedayid;

	private String advancedayname;

	public Integer getAdvancedayid() {
		return advancedayid;
	}

	public void setAdvancedayid(Integer advancedayid) {
		this.advancedayid = advancedayid;
	}

	public String getAdvancedayname() {
		return advancedayname;
	}

	public void setAdvancedayname(String advancedayname) {
		this.advancedayname = advancedayname;
	}

	@Override
	public String toString() {
		return "AdvancedayBean [advancedayid=" + advancedayid + ", advancedayname=" + advancedayname + "]";
	}

}
