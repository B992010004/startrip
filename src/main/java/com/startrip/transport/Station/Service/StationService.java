package com.startrip.transport.Station.Service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.startrip.transport.Station.StationInterface.StationRepositoryInterface;
import com.startrip.transport.Station.StationModle.StationBean;

@Service
@Transactional
public class StationService implements StationServiceInterface{

	@Autowired
	private StationRepositoryInterface stationDAO;
	
	@Override
	public List<StationBean> select() {
		return stationDAO.select();
	}
	
	@Override
	public void update(String area, String stationName,String Address) {
		
		stationDAO.update(area,stationName,Address);
	}
	
	@Override
	public void insert(StationBean bean) {

		stationDAO.insert(bean);

	}
	
	@Override
	public boolean delete(Integer id) {
		return stationDAO.delete(id);
	
}

	@Override
	public List<StationBean> selectArea(String ar) {
		return stationDAO.selectArea(ar);
	}

	
}