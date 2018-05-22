package com.startrip.transport.OrderList.OrderListInterface;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import com.startrip.transport.OrderList.OrderListModle.OrderListBean;
import com.startrip.transport.Station.StationModle.StationBean;

public interface OrderListRepositoryInterface {

	List<OrderListBean> select();

	StationBean select(Integer orderNumber);

	void update(String scId,String scName,  String sMail, Integer sPhone, String crderKind,Timestamp orderTime,
			
			String StarStation ,String EndStation
			
			
			);

	void insert(OrderListBean bean);

	boolean delete(Integer orderNumber);


	
	
	

	
	
}
