package com.startrip.transport.SeatList.SeatListInterface;

import java.util.List;

import com.startrip.transport.SeatList.SeatListModle.SeatListBean;

public interface SeatListRepositoryInterface {

	
	List<SeatListBean> select();
	
	SeatListBean select(Integer id);
	
    void update(Integer Trip, Integer SeatNumber,Integer OrderNumber);
	
	void insert(SeatListBean bean);
	
	boolean delete(Integer id);

	
	

	
	
}
