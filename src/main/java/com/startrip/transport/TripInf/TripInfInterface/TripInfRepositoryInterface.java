package com.startrip.transport.TripInf.TripInfInterface;

import java.sql.Time;
import java.util.List;

import javax.xml.crypto.Data;

import com.startrip.transport.TripInf.TripInfModle.TripInfBean;

public interface TripInfRepositoryInterface {

	List<TripInfBean> select();

	TripInfBean select(Integer trip);

	void update(Data date, String starStation, String endStation, Integer price, Integer seateList, Time starTime);

	void insert(TripInfBean bean);

	boolean delete(Integer trip);

}
