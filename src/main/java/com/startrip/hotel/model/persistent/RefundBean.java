package com.startrip.hotel.model.persistent;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="refund")
public class RefundBean implements Serializable{	
	private static final long serialVersionUID = -7439730669003920115L;
	
	public RefundBean() {
	}

	@Id
	private Integer refundid;
		
	private String rulename;

	public Integer getRefundid() {
		return refundid;
	}

	public void setRefundid(Integer refundid) {
		this.refundid = refundid;
	}

	public String getRulename() {
		return rulename;
	}

	public void setRulename(String rulename) {
		this.rulename = rulename;
	}

	@Override
	public String toString() {
		return "RefundBean [refundid=" + refundid + ", rulename=" + rulename + "]";
	}

	
	
}
