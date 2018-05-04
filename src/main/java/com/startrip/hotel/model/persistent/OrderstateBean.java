package com.startrip.hotel.model.persistent;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="orderstate")
public class OrderstateBean  implements Serializable{

	private static final long serialVersionUID = -4339537248637915584L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer orderstateid;
	
	@OneToMany(mappedBy="orderstateid")
	private Set<MemberorderBean> memberorder;
	
	private String orderstatename;

	public Integer getOrderstateid() {
		return orderstateid;
	}

	public void setOrderstateid(Integer orderstateid) {
		this.orderstateid = orderstateid;
	}

	public Set<MemberorderBean> getMemberorder() {
		return memberorder;
	}

	public void setMemberorder(Set<MemberorderBean> memberorder) {
		this.memberorder = memberorder;
	}

	public String getOrderstatename() {
		return orderstatename;
	}

	public void setOrderstatename(String orderstatename) {
		this.orderstatename = orderstatename;
	}
	
	
	
}
