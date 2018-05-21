package com.startrip.travelPlan.service.imp;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.travelPlan.Dao.ITravelViewDao;
import com.startrip.travelPlan.model.TravelViewBean;
import com.startrip.travelPlan.service.ITravelViewService;
@Service
public class viewService implements ITravelViewService {
	@Autowired
	ITravelViewDao viewDao;
	
	@Transactional
	@Override
	public TravelViewBean select_ViewId(Integer viewId) {
		return viewDao.select_ViewId(viewId);
	}
	@Transactional
	@Override
	public List<TravelViewBean> select_ViewName(String viewName) {
		return viewDao.select_ViewName(viewName);
	}
	
	@Transactional
	@Override
	public List<TravelViewBean> select() {
		return viewDao.select();
	}
	
	@Transactional
	@Override
	public Integer insert(TravelViewBean bean) {
		
		return viewDao.insert(bean);
		
	}
	@Transactional
	@Override
	public MemberBean getMail(Integer memberId) {
		
		return viewDao.getMemberId(memberId);
		
	}
	
	
	@Transactional
	@Override
	public void update(TravelViewBean bean) {
		viewDao.update(bean);
	}
	
	@Transactional
	@Override
	public void delete(Integer viewId) {
		viewDao.delete(viewId);
	}
	@Transactional
	@Override
	public List<String> getAllOrgClass() {
		
		return viewDao.getAllOrgClass();
	}
	@Transactional
	@Override
	public List<TravelViewBean> getAddress(String address) {
		
		return viewDao.getAddress(address);
	}
	@Transactional
	@Override
	public List<TravelViewBean> getViewPoint(String viewName) {
		return viewDao.getViewPoint(viewName);
	}
	@Transactional
	@Override
	public Integer getCount(Integer viewId) {
		return viewDao.getCount(viewId);
	}
	@Transactional
	@Override
	public List<TravelViewBean> getPrimayKey(String viewName,String viewaddr) {
		return viewDao.getPrimayKey(viewName, viewaddr);
	}
}
