package com.startrip.hotel.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.hotel.model.HotelOrder;
import com.startrip.hotel.repository.HotelOrderInterface;

@Service
@Transactional
public class HotelOrderService implements HotelOrderServiceInterface {

	@Autowired
	HotelOrderInterface hotelOrderInterface;

	/* (non-Javadoc)
	 * @see com.startrip.hotel.service.HotelOrderServiceInterface#save(com.startrip.hotel.model.HotelOrder)
	 */
	@Override
	public String save(HotelOrder hotelOrder) {
		return hotelOrderInterface.save(hotelOrder);
	}

	/* (non-Javadoc)
	 * @see com.startrip.hotel.service.HotelOrderServiceInterface#selectByPk(java.lang.Long)
	 */
	@Override
	public HotelOrder selectByPk(String ordernumber) {

		return hotelOrderInterface.selectByPk(ordernumber);
	}
}
