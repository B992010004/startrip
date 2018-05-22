package com.startrip.transport.OrderList.Service;

import java.sql.Time;
import java.util.Date;

import com.startrip.transport.OrderList.OrderListModle.OrderListBean;

public class OrderListService {

	
	public void update(String scId, String scName,String sMail,Integer sPhone,String crderKind
			
			
			,Time orderTime,String StarStation,String EndStation,Date OrderDate) {
		
		OrderListBean.update(scId,scName,sMail,sPhone,crderKind,orderTime,StarStation,EndStation,OrderDate);
	}
	
	
}
