package com.startrip.transport.Station.Service;


import java.util.List;

import com.startrip.transport.Station.StationModle.StationBean;

public interface StationServiceInterface {

	List<StationBean> select();
	
	void update(String area, String stationName,String Address);

	void insert(StationBean bean);

	boolean delete(Integer id);
	
	List<StationBean> selectArea(String ar);
	
}
