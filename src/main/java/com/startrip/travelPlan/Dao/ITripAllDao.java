package com.startrip.travelPlan.Dao;

import java.sql.SQLException;
import java.util.List;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.travelPlan.model.TravelAllBean;

public interface ITripAllDao {
	
	
	public TravelAllBean TravelPrimayKey(TravelAllBean travelName);

	public TravelAllBean Select_Travel(Integer memberId,Integer travelId);

	public List<TravelAllBean> selectAllTravel();


	public Integer insert(TravelAllBean bean);

	public void updateDays(TravelAllBean bean) throws SQLException;
	public void updateTravel(TravelAllBean bean) throws SQLException;

	public void delete(Integer id);

	MemberBean getMail(String mail);
	public List<TravelAllBean> select_mail(Integer id);

}