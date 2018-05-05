package com.startrip.travelPlan.travelAll.service.Imp;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.travelPlan.travelAll.Dao.Imp.TravelAllDaoSpring;
import com.startrip.travelPlan.travelAll.model.TravelAllBean;
import com.startrip.travelPlan.travelAll.service.TravelAllService;
@Service
public class TravelAllServiceImp implements TravelAllService {
	
	@Autowired
	private TravelAllDaoSpring travelDao;

	@Override
	public TravelAllBean Select_TravelId(int id) {
		return travelDao.Select_TravelId(id);
	}

	@Override
	public List<TravelAllBean> selectAllTravel() {
		return travelDao.selectAllTravel();
	}

	@Override
	public void insert(TravelAllBean bean) {
		travelDao.insert(bean);
	}

	@Override
	public void updateTrip(TravelAllBean bean) throws SQLException {
		travelDao.updateTrip(bean);
	}

	@Override
	public void delete(int id) {
		travelDao.delete(id);
	}

}
