package com.startrip.travelPlan.Dao;

import java.sql.SQLException;
import java.util.List;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.travelPlan.model.TravelAllBean;

public interface ITripAllDao {
	
	
	public TravelAllBean TravelPrimayKey(TravelAllBean travelName);

	public TravelAllBean Select_TravelId(int id);

	public List<TravelAllBean> selectAllTravel();


	public void insert(TravelAllBean bean);

	public void updateDays(TravelAllBean bean) throws SQLException;

	public void delete(Integer id);

	MemberBean getMail(String mail);

}