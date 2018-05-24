package com.startrip.transport.OrderList.Service;

import java.sql.Time;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.transport.OrderList.OrderListModle.OrderListBean;
import com.startrip.transport.Station.StationModle.StationBean;

@Service
@Transactional
public class OrderListService implements OrderListServiceInterface {

	@Autowired
	private OrderListServiceInterface orderListDAO;
	
	@Override
	public List<OrderListBean> select() {
		// TODO Auto-generated method stub
		return orderListDAO.select();
	}

	@Override
	public <EndStation> void update(String scId, String scName, String sMail, Integer sPhone, String crderKind,
			Time orderTime, String starStation, String sndStation, Date orderDate, EndStation endStation) {
		// TODO Auto-generated method stub

	}

	@Override
	public void insert(OrderListBean bean) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean delete(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<StationBean> selectArea(String ar) {
		// TODO Auto-generated method stub
		return null;
	}

}
