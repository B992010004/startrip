package com.startrip.travelPlan.service.imp;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
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
	public void delete(int viewId) {
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

}
