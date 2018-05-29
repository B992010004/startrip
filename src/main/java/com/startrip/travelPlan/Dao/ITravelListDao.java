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
	
	public List<TravelListBean> select_listday(Integer travelId,Integer tripday);
	
	public TravelListBean select_lastlist(Integer travelId, Integer tripday);

	public Integer update_ListState(Integer travelId, Integer tripday, String endtime);
	
	public String update_List(TravelListBean bean);
	
	public String updateListDay(Integer travelId,Integer travelListDay);
	
	public String updateListDayState(Integer travelId,Integer travelListDay);

	public List<TravelListBean> selectTravelList(Integer travelId);
}