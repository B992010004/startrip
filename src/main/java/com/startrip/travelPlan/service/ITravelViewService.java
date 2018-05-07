package com.startrip.travelPlan.service;

import java.util.List;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.travelPlan.model.TravelViewBean;


public interface ITravelViewService {
	
	TravelViewBean select_ViewId(int viewId);


	List<TravelViewBean> select();


	public void insert(TravelViewBean bean);


	public void update(TravelViewBean bean);


	public void delete(int viewId);
	
	public List<String> getAllOrgClass();


	MemberBean getMail(Integer memberId);
	
}
