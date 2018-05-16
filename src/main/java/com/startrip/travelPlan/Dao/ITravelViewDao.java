package com.startrip.travelPlan.Dao;

import java.util.List;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.travelPlan.model.TravelViewBean;

public interface ITravelViewDao {


	TravelViewBean select_ViewId(String viewId);


	List<TravelViewBean> select();


	public void insert(TravelViewBean bean);


	public void update(TravelViewBean bean);


	public void delete(String viewId);

	public List<String> getAllOrgClass();


	public MemberBean getMemberId(Integer id) ;


	List<TravelViewBean> getAddress(String address);
	
	public TravelViewBean getViewPoint(String viewName) ;
	
	public Integer getCount(String viewId);
}