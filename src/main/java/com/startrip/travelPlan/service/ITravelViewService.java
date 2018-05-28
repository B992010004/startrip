package com.startrip.travelPlan.service;

import java.util.List;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.travelPlan.model.TravelViewBean;


public interface ITravelViewService {
	
	TravelViewBean select_ViewId(Integer viewId);
	List<TravelViewBean> select_latlng(String latlng);


	List<TravelViewBean> select();


	public Integer insert(TravelViewBean bean);


	public void update(TravelViewBean bean);


	public void delete(Integer viewId);
	
	public List<String> getAllOrgClass();


	MemberBean getMail(Integer memberId);
	
	List<TravelViewBean> getAddress(String address);
	
	public List<TravelViewBean> getViewPoint(String viewName);
	public Integer getCount(Integer viewId);
	
	public List<TravelViewBean> getPrimayKey(String viewName,String viewaddr);
	
}
