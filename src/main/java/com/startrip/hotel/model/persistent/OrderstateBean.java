package com.startrip.hotel.model.persistent;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="orderstate")
public class OrderstateBean  implements Serializable{

	private static final long serialVersionUID = -4339537248637915584L;

	public OrderstateBean() {
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer orderstateid;
		
	private String orderstatename;

	public Integer getOrderstateid() {
		return orderstateid;
	}

	public void setOrderstateid(Integer orderstateid) {
		this.orderstateid = orderstateid;
	}

	public String getOrderstatename() {
		return orderstatename;
	}

	public void setOrderstatename(String orderstatename) {
		this.orderstatename = orderstatename;
	}

	@Override
	public String toString() {
		return "OrderstateBean [orderstateid=" + orderstateid + ", orderstatename=" + orderstatename + "]";
	}

	
	
}
