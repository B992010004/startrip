package com.startrip.restaurant.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.restaurant.model.RtBookingBean;
import com.startrip.restaurant.repository.RtBookingRepository;

@Service
public class RtBookingServiceImp implements RtBookingService {
	
	@Autowired
	private RtBookingRepository RtBookingRepositoryImp;

	@Override
	public RtBookingBean getAllRtBookingmail(String mail) {
		return RtBookingRepositoryImp.getAllRtBookingmail(mail);
	}

	@Override
	public RtBookingBean updateRtBooking(RtBookingBean bean) {
		return RtBookingRepositoryImp.updateRtBooking(bean);
	}

	@Override
	public RtBookingBean insertRtBooking(RtBookingBean bean) {
		return RtBookingRepositoryImp.insertRtBooking(bean);
	}

	@Override
	public boolean deleteRtBookingbgId(Integer bgId) {
		return RtBookingRepositoryImp.deleteRtBookingbgId(bgId);
	}

}
