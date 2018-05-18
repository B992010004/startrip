package com.startrip.transport.Station.StationInterface;

import java.util.List;

import com.startrip.transport.Station.StationModle.StationBean;

public interface StationRepositoryInterface {

	List<StationBean> select();

	StationBean select(Integer id);

	void update(String area, String stationName, String Address);

	void insert(StationBean bean);

	boolean delete(Integer id);

	List<StationBean> selectArea(String ar);

}
