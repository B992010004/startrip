package com.startrip.transport.SeatList.Service;

import java.util.List;

import com.startrip.transport.SeatList.SeatListModle.SeatListBean;

public interface SeatListServiceInteface {

	
	List<SeatListBean> select();
	
	void update(Integer Trip, Integer SeatNumber,Integer Seat,Integer OrderNumber);

	void insert(SeatListBean bean);

	boolean delete(Integer id);
	

	
}
