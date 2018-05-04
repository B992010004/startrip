package com.startrip.travelPlan.travelList.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.travelPlan.travelList.Dao.TravelListDao;
import com.startrip.travelPlan.travelList.model.TravelListBean;
import com.startrip.travelPlan.travelList.model.TravelListPK;
@Service
public class TravelListservice implements ListService {
	@Autowired
	TravelListDao listDao;
	
	@Override
	public TravelListBean Select_ListId(TravelListPK bean) {
		TravelListBean result = new TravelListBean();
		result = listDao.Select_PK(bean);
		return result;
	}

	@Override
	public List<TravelListBean> selectAllList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(TravelListBean bean) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(TravelListBean bean) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub

	}

}
