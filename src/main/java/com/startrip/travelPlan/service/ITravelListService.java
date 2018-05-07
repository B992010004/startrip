package com.startrip.travelPlan.service;

import java.sql.SQLException;
import java.util.List;

import com.startrip.travelPlan.model.TravelListBean;
import com.startrip.travelPlan.model.TravelListPK;

public interface ITravelListService {
	
	public TravelListBean Select_ListId(TravelListPK bean);

	public List<TravelListBean> selectAllList();


	public void insert(TravelListBean bean);

	public void update(TravelListBean bean) throws SQLException;

	public void delete(int id); 
}
