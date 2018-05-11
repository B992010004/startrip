package com.startrip.transport.Station.Service;

import java.sql.Blob;
import java.util.List;


import com.startrip.transport.Station.StationModle.StationBean;

public interface StationServiceInterface {

	List<StationBean> select();
	
	void update(String area, String stationName);

	void insert(StationBean bean);

	boolean delete(Integer id);
	
}
