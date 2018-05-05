package com.startrip.travelPlan.travelAll.Dao;

import java.sql.SQLException;
import java.util.List;

import com.startrip.travelPlan.travelAll.model.TravelAllBean;

public interface TripAllDaoSpringI {

	public TravelAllBean Select_TravelId(int id);

	public List<TravelAllBean> selectAllTravel();


	public void insert(TravelAllBean bean);

	public void updateTrip(TravelAllBean bean) throws SQLException;

	public void delete(int id);

}