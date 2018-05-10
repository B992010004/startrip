package com.startrip.travelPlan.Dao;

import java.sql.SQLException;
import java.util.List;

import com.startrip.travelPlan.model.TravelListBean;

public interface ITravelListDao {

	

	List<TravelListBean> select();

	void insert(TravelListBean bean);

	void update(TravelListBean bean) throws SQLException;

	void delete(Integer id);

	List<TravelListBean> Select_travelid(Integer id);

}