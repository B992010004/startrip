package com.startrip.travelPlan.travelView.Dao;

import java.util.List;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.travelPlan.travelView.model.TravelViewBean;

public interface TravelViewDao {


	TravelViewBean select_ViewId(int viewId);


	List<TravelViewBean> select();


	public void insert(TravelViewBean bean);


	public void update(TravelViewBean bean);


	public void delete(int viewId);

	public List<String> getAllOrgClass();


	MemberBean getMail(String mail);
}