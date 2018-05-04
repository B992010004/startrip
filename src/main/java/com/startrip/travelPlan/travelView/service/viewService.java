package com.startrip.travelPlan.travelView.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.travelPlan.travelView.Dao.TravelViewDao;
import com.startrip.travelPlan.travelView.model.TravelViewBean;
@Service
public class viewService implements travelViewService {
	@Autowired
	TravelViewDao viewDao;
	
	@Transactional
	@Override
	public TravelViewBean select_ViewId(int viewId) {
	return viewDao.select_ViewId(viewId);
	}
	
	@Transactional
	@Override
	public List<TravelViewBean> select() {
		return viewDao.select();
	}
	
	@Transactional
	@Override
	public void insert(TravelViewBean bean) {
		
		viewDao.insert(bean);
	}
	
	
	
	
	@Transactional
	@Override
	public void update(TravelViewBean bean) {
		viewDao.update(bean);
	}
	
	@Transactional
	@Override
	public void delete(int viewId) {
		viewDao.delete(viewId);
	}
	@Transactional
	@Override
	public List<String> getAllOrgClass() {
		
		return viewDao.getAllOrgClass();
	}

}
