package com.startrip.transport.Station.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.startrip.transport.Station.modle.StationBean;
import com.startrip.transport.Station.stationInterface.StationRepositoryInterface;

public class StationService {

	@Autowired
	private StationRepositoryInterface stationDAO;
	
	@Transactional
	@Override
	public List<StationBean> select() {
		return stationDAO.select();
	}
	
}
