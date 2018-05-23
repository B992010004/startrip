package com.startrip.transport.TripInf.Service;

import java.sql.Time;
import java.util.List;

import javax.xml.crypto.Data;

import com.startrip.transport.TripInf.TripInfModle.TripInfBean;

public interface TripInfServiceInterface {

	void update(Data date, String StarStation, String EndStation, Integer Price, Integer SeateList, Time StarTime);

	void insert(TripInfBean bean);

	boolean delete(Integer id);

	List<TripInfBean> select1();

}
