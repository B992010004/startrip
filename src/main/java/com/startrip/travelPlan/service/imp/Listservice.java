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
	public List<TravelListBean> Select_travellist(Integer travelId,Integer day) {
		return listDao.Select_travellist(travelId,day);
	}
	@Transactional
	@Override
	public List<TravelListBean> selectAllList() {
		return null;
	}
	@Transactional
	@Override
	public Integer insert(TravelListBean bean) {
		Integer pk = listDao.insert(bean);
		return pk;
	}
	@Transactional
	@Override
	public void update(TravelListBean bean) throws SQLException {

	}
	@Transactional
	@Override
	public void delete(int id) {

	}
	@Transactional
	@Override
	public List<TravelListBean> select_listday(Integer travelId,Integer tripday){
		return listDao.select_listday(travelId,  tripday);
	}
	@Transactional
	@Override
	public TravelListBean select_lastlist(Integer travelId, Integer tripday) {
		return listDao.select_lastlist(travelId,tripday);
	}
	@Transactional
	@Override
	public Integer update_ListState(Integer travelId, Integer tripday, String starttime) {
		return listDao.update_ListState(travelId,tripday,starttime);
	}

}
