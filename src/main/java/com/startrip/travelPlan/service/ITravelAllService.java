package com.startrip.travelPlan.service;

import java.sql.SQLException;
import java.util.List;

import com.startrip.travelPlan.model.TravelAllBean;

public interface ITravelAllService {

	
	public TravelAllBean Select_Travel(Integer memberId,Integer travelId);

	public List<TravelAllBean> selectAllTravel();


	public Integer insert(TravelAllBean bean);

	public void updateDays(TravelAllBean bean) throws SQLException;
	public void updateTravel(TravelAllBean bean) throws SQLException;

	public void delete(int id);
	
	public List<TravelAllBean> select_mail(Integer id);
}
