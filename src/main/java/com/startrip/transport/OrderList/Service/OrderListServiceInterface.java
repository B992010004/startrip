package com.startrip.transport.OrderList.Service;

import java.sql.Time;
import java.util.Date;
import java.util.List;

import com.startrip.transport.OrderList.OrderListModle.OrderListBean;

import com.startrip.transport.Station.StationModle.StationBean;

public interface OrderListServiceInterface {

     List<OrderListBean> select();
	
	<EndStation> void update(String scId, String scName,String sMail,Integer sPhone,String crderKind
			,Time orderTime,String starStation,String sndStation,Date orderDate,EndStation endStation);

	void insert(OrderListBean bean);

	boolean delete(Integer id);
	
	List<StationBean> selectArea(String ar);

	
	
	
	
	
}
