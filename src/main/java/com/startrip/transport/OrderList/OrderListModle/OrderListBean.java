package com.startrip.transport.OrderList.OrderListModle;

import java.io.Serializable;
import java.sql.Time;
import java.sql.Timestamp;
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
	
	private Time OrderTime;
	
	private String StarStation;
	
	private String EndStation;
	
	private Date OrderDate;

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

	public Time getOrderTime() {
		return OrderTime;
	}

	public void setOrderTime(Time orderTime) {
		OrderTime = orderTime;
	}

	public String getStarStation() {
		return StarStation;
	}

	public void setStarStation(String starStation) {
		StarStation = starStation;
	}

	public String getEndStation() {
		return EndStation;
	}

	public void setEndStation(String endStation) {
		EndStation = endStation;
	}

	public Date getOrderDate() {
		return OrderDate;
	}

	public void setOrderDate(Date orderDate) {
		OrderDate = orderDate;
	}

	@Override
	public String toString() {
		return "OrderListBean [orderNumber=" + orderNumber + ", scId=" + scId + ", scName=" + scName + ", sMail="
				+ sMail + ", sPhone=" + sPhone + ", crderKind=" + crderKind + ", OrderTime=" + OrderTime
				+ ", StarStation=" + StarStation + ", EndStation=" + EndStation + ", OrderDate=" + OrderDate + "]";
	}

	public static void update(String scId2, String scName2, String sMail2, Integer sPhone2, String crderKind2,
			Time orderTime2, String starStation2, String endStation2, Date orderDate2) {
		// TODO Auto-generated method stub
		
	}
	

	
	
	
}
