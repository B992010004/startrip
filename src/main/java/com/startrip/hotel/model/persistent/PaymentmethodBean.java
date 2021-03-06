package com.startrip.hotel.model.persistent;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="paymentmethod")
public class PaymentmethodBean  implements Serializable{
	private static final long serialVersionUID = 1132143219284705867L;

	public PaymentmethodBean() {
	}

	@Id
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
