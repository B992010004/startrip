package com.startrip.travelPlan.service;

import java.sql.SQLException;
import java.util.List;

import com.startrip.travelPlan.model.TravelListBean;

public interface ITravelListService {
	
	public List<TravelListBean> Select_travellist(Integer travelId,Integer day);

	public List<TravelListBean> selectAllList();


	public Integer insert(TravelListBean bean);

	public void update(TravelListBean bean) throws SQLException;

	public void delete(int id); 
}
