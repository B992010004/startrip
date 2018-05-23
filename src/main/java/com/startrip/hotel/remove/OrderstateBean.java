package com.startrip.hotel.remove;

import java.io.Serializable;

//@Entity(name="orderstate")
public class OrderstateBean  implements Serializable{

	private static final long serialVersionUID = -4339537248637915584L;

	public OrderstateBean() {
	}

//	@Id
//	@GeneratedValue(strategy=GenerationType.IDENTITY)
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
