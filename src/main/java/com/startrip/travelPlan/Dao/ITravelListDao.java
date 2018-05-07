package com.startrip.travelPlan.Dao;

import java.sql.SQLException;
import java.util.List;

import com.startrip.travelPlan.model.TravelListBean;
import com.startrip.travelPlan.model.TravelListPK;

public interface ITravelListDao {

	TravelListBean Select_PK(TravelListPK bean);

	List<TravelListBean> select();

	void insert(TravelListBean bean);

	void update(TravelListBean bean) throws SQLException;

	void delete(Integer id);

}