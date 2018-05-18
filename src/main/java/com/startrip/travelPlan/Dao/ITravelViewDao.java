package com.startrip.travelPlan.Dao;

import java.util.List;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.travelPlan.model.TravelViewBean;

public interface ITravelViewDao {


	TravelViewBean select_ViewId(Integer viewId);

	public List<TravelViewBean> select_ViewName(String viewName);

	List<TravelViewBean> select();


	public Integer insert(TravelViewBean bean);


	public void update(TravelViewBean bean);


	public void delete(Integer viewId);

	public List<String> getAllOrgClass();


	public MemberBean getMemberId(Integer id) ;


	List<TravelViewBean> getAddress(String address);
	
	public List<TravelViewBean> getViewPoint(String viewName) ;
	
	public Integer getCount(Integer viewId);
	
	public List<TravelViewBean> getPrimayKey(String viewName,String viewaddr);
}