package com.startrip.transport.TripInf.Service;

import java.sql.Time;
import java.util.List;

import javax.transaction.TransactionScoped;
import javax.transaction.Transactional;
import javax.xml.crypto.Data;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.transport.TripInf.TripInfInterface.TripInfRepositoryInterface;
import com.startrip.transport.TripInf.TripInfModle.TripInfBean;



@Service
@Transactional
public  class TripInfService implements TripInfServiceInterface{

	@Autowired
	TripInfRepositoryInterface TripInfDAO1;
	

	@Override
	public List<TripInfBean> select1() {	
		return TripInfDAO1.select();
	}


	@Override
	public void update(Data date, String starStation, String endStation, Integer price, Integer seateList,
			Time starTime) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(TripInfBean bean) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public boolean delete(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}
	

}
