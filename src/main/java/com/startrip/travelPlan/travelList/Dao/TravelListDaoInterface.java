package com.startrip.travelPlan.travelList.Dao;

import java.sql.SQLException;
import java.util.List;

import com.startrip.travelPlan.travelList.model.TravelListBean;
import com.startrip.travelPlan.travelList.model.TravelListPK;

public interface TravelListDaoInterface {

	TravelListBean Select_PK(TravelListPK bean);

	List<TravelListBean> select();

	void insert(TravelListBean bean);

	void update(TravelListBean bean) throws SQLException;

	void delete(TravelListBean bean);

}