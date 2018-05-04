package com.startrip.hotel.model.persistent;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="refund")
public class RefundBean implements Serializable{	
	private static final long serialVersionUID = -7439730669003920115L;
	
	@Id
	private Integer refundid;
	
	@OneToMany(mappedBy="refundid")
	private Set<RulelistBean> rulelist;
	
	private String rulename;

	public Integer getRefundid() {
		return refundid;
	}

	public void setRefundid(Integer refundid) {
		this.refundid = refundid;
	}

	public Set<RulelistBean> getRulelist() {
		return rulelist;
	}

	public void setRulelist(Set<RulelistBean> rulelist) {
		this.rulelist = rulelist;
	}

	public String getRulename() {
		return rulename;
	}

	public void setRulename(String rulename) {
		this.rulename = rulename;
	}
	
	
	
}
