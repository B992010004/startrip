package com.startrip.travelPlan.service.imp;

import java.sql.SQLException;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.travelPlan.Dao.imp.TravelAllDao;
import com.startrip.travelPlan.model.TravelAllBean;
import com.startrip.travelPlan.service.ITravelAllService;
@Service
public class AllServiceImp implements ITravelAllService {
	
	@Autowired
	private TravelAllDao travelDao;
	
	@Transactional
	@Override
	public TravelAllBean Select_Travel(Integer memberId,Integer travelId){
		return travelDao.Select_Travel(memberId,travelId);
	}
	@Transactional
	@Override
	public List<TravelAllBean> selectAllTravel() {
		return travelDao.selectAllTravel();
	}
	@Transactional
	@Override
	public String insert(TravelAllBean bean) {
		
		
		return travelDao.insert(bean);
		
	}
	@Transactional
	@Override
	public Integer insert_getprimarykey(TravelAllBean bean)  {
		
		
		return travelDao.insert_getprimarykey(bean);
		
	}

	@Transactional
	@Override
	public void updateDays(TravelAllBean bean) throws SQLException {
		travelDao.updateDays(bean);
	}
	@Transactional
	@Override
	public void delete(int id) {
		travelDao.delete(id);
	}

	@Transactional
	@Override
	public List<TravelAllBean> select_mail(Integer id){
		return travelDao.select_mail(id);
	}
	@Transactional
	@Override
	public void updateTravel(TravelAllBean bean) throws SQLException {
		travelDao.updateTravel(bean);
		
	}
}
