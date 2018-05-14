package com.startrip.travelPlan.service.imp;

import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
	public Integer insert(TravelAllBean bean) {
		
		
		Integer pk =travelDao.insert(bean);
		return pk;
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
	@Override
	public void updateTravel(TravelAllBean bean) throws SQLException {
		travelDao.updateTravel(bean);
		
	}
}
