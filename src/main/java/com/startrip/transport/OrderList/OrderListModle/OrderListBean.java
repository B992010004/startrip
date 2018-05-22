package com.startrip.transport.OrderList.OrderListModle;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="OrderList")
public class OrderListBean implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer orderNumber;
	
	private String scId;
	
	private String scName;
	
	private String sMail;
	
	private Integer sPhone;
	
	
	private String crderKind;
	
	private Date orderTime;
	


	public Integer getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(Integer orderNumber) {
		this.orderNumber = orderNumber;
	}

	public String getScId() {
		return scId;
	}

	public void setScId(String scId) {
		this.scId = scId;
	}

	public String getScName() {
		return scName;
	}

	public void setScName(String scName) {
		this.scName = scName;
	}

	public String getsMail() {
		return sMail;
	}

	public void setsMail(String sMail) {
		this.sMail = sMail;
	}

	public Integer getsPhone() {
		return sPhone;
	}

	public void setsPhone(Integer sPhone) {
		this.sPhone = sPhone;
	}

	public String getCrderKind() {
		return crderKind;
	}

	public void setCrderKind(String crderKind) {
		this.crderKind = crderKind;
	}

	public Date getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}

	@Override
	public String toString() {
		return "OrderListBean [orderNumber=" + orderNumber + ", scId=" + scId + ", scName=" + scName + ", sMail="
				+ sMail + ", sPhone=" + sPhone + ", crderKind=" + crderKind + ", orderTime=" + orderTime + "]";
	}

	
	
}
