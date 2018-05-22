package com.startrip.hotel.remove;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

//@Entity(name="paymentmethod")
public class PaymentmethodBean  implements Serializable{
	private static final long serialVersionUID = 1132143219284705867L;

	public PaymentmethodBean() {
	}

//	@Id
	private Integer methodid;
	
	private String methodname;

	public Integer getMethodid() {
		return methodid;
	}

	public void setMethodid(Integer methodid) {
		this.methodid = methodid;
	}

	public String getMethodname() {
		return methodname;
	}

	public void setMethodname(String methodname) {
		this.methodname = methodname;
	}

	@Override
	public String toString() {
		return "PaymentmethodBean [methodid=" + methodid + ", methodname=" + methodname + "]";
	}

	
	
}
