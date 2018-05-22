package com.startrip.transport.TripInf.Service;

import java.sql.Time;
import java.util.List;

import javax.xml.crypto.Data;


import com.startrip.transport.TripInf.TripInfModle.TripInfBean;

public interface TripInfServiceInterface {

	List <TripInfBean> select();
	
	void update(Data date, Integer StarStation,
			Integer EndStation,Integer Price,
			Integer SeateList,Time StarTime);

	void insert(TripInfBean bean);

	boolean delete(Integer id);
	
	
	

}
