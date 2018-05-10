package com.startrip.travelPlan.service;

import java.sql.SQLException;
import java.util.List;

import com.startrip.travelPlan.model.TravelListBean;

public interface ITravelListService {
	
	List<TravelListBean> Select_travelid(Integer id);

	public List<TravelListBean> selectAllList();


	public void insert(TravelListBean bean);

	public void update(TravelListBean bean) throws SQLException;

	public void delete(int id); 
}
