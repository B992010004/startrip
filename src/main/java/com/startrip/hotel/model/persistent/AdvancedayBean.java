package com.startrip.hotel.model.persistent;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="advanceday")
public class AdvancedayBean implements Serializable{
	
	private static final long serialVersionUID = 6375349337563027399L;

	@Id
	private Integer advancedayid;
	
	@OneToMany(mappedBy="advancedayid")
	private Set<RulelistBean> rulelist;
	
	private String advancedayname;

	public Integer getAdvancedayid() {
		return advancedayid;
	}

	public void setAdvancedayid(Integer advancedayid) {
		this.advancedayid = advancedayid;
	}

	public Set<RulelistBean> getRulelist() {
		return rulelist;
	}

	public void setRulelist(Set<RulelistBean> rulelist) {
		this.rulelist = rulelist;
	}

	public String getAdvancedayname() {
		return advancedayname;
	}

	public void setAdvancedayname(String advancedayname) {
		this.advancedayname = advancedayname;
	}
	
	

}
