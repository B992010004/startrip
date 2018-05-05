package com.startrip.travelPlan.travelView.service;

import java.util.List;

import com.startrip.travelPlan.travelView.model.TravelViewBean;


public interface travelViewService {
	
	TravelViewBean select_ViewId(int viewId);


	List<TravelViewBean> select();


	public void insert(TravelViewBean bean);


	public void update(TravelViewBean bean);


	public void delete(int viewId);
	
	public List<String> getAllOrgClass();
	
}
