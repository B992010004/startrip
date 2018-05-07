package com.startrip.travelPlan.travelAll.service.Imp;

import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.travelPlan.travelAll.Dao.Imp.TravelAllDaoSpring;
import com.startrip.travelPlan.travelAll.model.TravelAllBean;
import com.startrip.travelPlan.travelAll.service.TravelAllService;
@Service
public class TravelAllServiceImp implements TravelAllService {
	
	@Autowired
	private TravelAllDaoSpring travelDao;
	
	@Transactional
	@Override
	public TravelAllBean Select_TravelId(int id) {
		return travelDao.Select_TravelId(id);
	}
	@Transactional
	@Override
	public List<TravelAllBean> selectAllTravel() {
		return travelDao.selectAllTravel();
	}
	@Transactional
	@Override
	public void insert(TravelAllBean bean) {
		
		
		travelDao.insert(bean);
	}

	@Transactional
	@Override
	public void update(TravelAllBean bean) throws SQLException {
		travelDao.update(bean);
	}
	@Transactional
	@Override
	public void delete(int id) {
		travelDao.delete(id);
	}

}
