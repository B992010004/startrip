package com.startrip.travelPlan.Dao;

import java.sql.SQLException;
import java.util.List;

import com.startrip.travelPlan.model.TravelListBean;

public interface ITravelListDao {

	

	List<TravelListBean> select();

	Integer insert(TravelListBean bean);

	void update(TravelListBean bean) throws SQLException;

	void delete(Integer id);

	public List<TravelListBean> Select_travellist(Integer travelId,Integer day);

}