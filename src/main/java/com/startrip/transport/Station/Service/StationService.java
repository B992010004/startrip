package com.startrip.transport.Station.Service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.startrip.transport.Station.StationInterface.StationRepositoryInterface;
import com.startrip.transport.Station.StationModle.StationBean;

@Service
public class StationService implements StationServiceInterface{

	@Autowired
	private StationRepositoryInterface stationDAO;
	
	@Transactional
	@Override
	public List<StationBean> select() {
		return stationDAO.select();
	}
	
	@Transactional
	@Override
	public void update(String area, String stationName,String Address) {
		
		stationDAO.update(area,stationName,Address);
	}
	
	@Transactional
	@Override
	public void insert(StationBean bean) {

		stationDAO.insert(bean);

	}
	
	@Transactional
	@Override
	public boolean delete(Integer id) {
		return stationDAO.delete(id);
	
}

	
}