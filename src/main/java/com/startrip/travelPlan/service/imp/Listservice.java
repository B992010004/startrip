package com.startrip.travelPlan.service.imp;

import java.sql.SQLException;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.travelPlan.Dao.imp.TravelListDao;
import com.startrip.travelPlan.model.TravelListBean;
import com.startrip.travelPlan.service.ITravelListService;
@Service
public class Listservice implements ITravelListService {
	@Autowired
	TravelListDao listDao;
	@Transactional
	@Override
	public List<TravelListBean> Select_travellist(Integer travelId) {
		return listDao.Select_travellist(travelId);
	}
	@Transactional
	@Override
	public List<TravelListBean> selectAllList() {
		return null;
	}
	@Transactional
	@Override
	public void insert(TravelListBean bean) {

	}
	@Transactional
	@Override
	public void update(TravelListBean bean) throws SQLException {

	}
	@Transactional
	@Override
	public void delete(int id) {

	}

}
