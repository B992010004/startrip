package com.startrip.transport.Station.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.startrip.transport.Station.StationInterface.StationRepositoryInterface;
import com.startrip.transport.Station.StationModle.StationBean;

public class StationService implements StationServiceInterface{

	@Autowired
	private StationRepositoryInterface stationDAO;
	
	@Transactional
	@Override
	public List<StationBean> select() {
		return stationDAO.select();
	}
	
}
