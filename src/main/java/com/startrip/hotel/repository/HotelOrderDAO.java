package com.startrip.hotel.repository;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.HotelOrder;
import com.startrip.hotel.model.Rooms;

@Repository
public class HotelOrderDAO implements HotelOrderInterface {
	@Autowired
	SessionFactory factory;

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.startrip.hotel.repository.HotelOrderInterface#save(com.startrip.hotel.
	 * model.HotelOrder)
	 */
	@Override
	public String save(HotelOrder hotelOrder) {
		Session session = factory.getCurrentSession();
		String pk = (String) session.save(hotelOrder);
		return pk;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.startrip.hotel.repository.HotelOrderInterface#selectByPk(java.lang.Long)
	 * 沒收到歐付寶回傳資訊 展示先以最新筆資料代替
	 */
	@SuppressWarnings("unchecked")
	@Override
	public HotelOrder selectByPk(String ordernumber) {
		Session session = factory.getCurrentSession();
		List<HotelOrder> list = new ArrayList<>();
		list = session.createQuery("FROM HotelOrder ho ORDER BY orderTimeStamp").setMaxResults(1).list();
		return list.get(0);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<HotelOrder> selectByMemberId(Integer memberId) {
		Session session = factory.getCurrentSession();
		List<HotelOrder> list = new ArrayList<>();
		list = session.createQuery("FROM HotelOrder ho WHERE memberid = :memberid").setParameter("memberid", memberId)
				.list();
		return list;
	}

}
