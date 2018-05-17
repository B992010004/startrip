package com.startrip.restaurant.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.restaurant.model.RtBookingBean;
import com.startrip.restaurant.repository.RtBookingRepository;

@Service
@Transactional
public class RtBookingServiceImp implements RtBookingService {
	
	@Autowired
	private RtBookingRepository RtBookingRepositoryImp;

	@Override
	public List<RtBookingBean> getAllRtBookingmemberBean(MemberBean memberBean) {
		return RtBookingRepositoryImp.getAllRtBookingmemberBean(memberBean);
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
