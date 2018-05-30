package com.startrip.travelPlan.service;

import java.sql.SQLException;
import java.util.List;

import com.startrip.travelPlan.model.TravelListBean;

public interface ITravelListService {
	
	public List<TravelListBean> Select_travellist(Integer travelId,Integer day);

	public List<TravelListBean> selectAllList();

	
	public Integer insert(TravelListBean bean);

	public void update(TravelListBean bean) throws SQLException;

	public void delete(int id); 
	
	public List<TravelListBean> select_listday(Integer travelId,Integer tripday);
	
	public TravelListBean select_lastlist(Integer travelId,Integer tripday);
	
	public Integer update_ListState(Integer travelId,Integer tripday,String endtime);
	
	public String update_List(TravelListBean bean);
	
	public String updateListDay(Integer travelId,Integer travelListDay);
	
	public String updateListDayState(Integer travelId,Integer travelListDay);

	public List<TravelListBean> selectTravelList(Integer travelId);
	
	public List<TravelListBean> Select_travellist_Id(Integer travelId) ;
}
