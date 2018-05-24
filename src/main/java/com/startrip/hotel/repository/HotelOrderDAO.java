package com.startrip.hotel.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.HotelOrder;

@Repository
public class HotelOrderDAO implements HotelOrderInterface {
	@Autowired
	SessionFactory factory;
	
	/* (non-Javadoc)
	 * @see com.startrip.hotel.repository.HotelOrderInterface#save(com.startrip.hotel.model.HotelOrder)
	 */
	@Override
	public String save(HotelOrder hotelOrder) {
		Session session = factory.getCurrentSession();
		String pk =  (String) session.save(hotelOrder);
		return pk;
	}
	
	/* (non-Javadoc)
	 * @see com.startrip.hotel.repository.HotelOrderInterface#selectByPk(java.lang.Long)
	 */
	@Override
	public HotelOrder selectByPk(String ordernumber) {
		Session session = factory.getCurrentSession();
		return session.get(HotelOrder.class, ordernumber);
	}
	
	
	
	
}
