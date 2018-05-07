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
