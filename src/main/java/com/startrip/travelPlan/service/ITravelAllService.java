package com.startrip.travelPlan.service;

import java.sql.SQLException;
import java.util.List;

import com.startrip.travelPlan.model.TravelAllBean;

public interface ITravelAllService {

	
	public TravelAllBean Select_TravelId(int id);

	public List<TravelAllBean> selectAllTravel();


	public void insert(TravelAllBean bean);

	public void updateDays(TravelAllBean bean) throws SQLException;

	public void delete(int id);
	
	public List<TravelAllBean> select_mail(Integer id);
}
