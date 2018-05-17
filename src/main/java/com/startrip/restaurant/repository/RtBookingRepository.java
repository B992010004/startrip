package com.startrip.restaurant.repository;


import java.util.List;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.restaurant.model.RtBookingBean;

public interface RtBookingRepository {
	
	List<RtBookingBean> getAllRtBookingmemberBean(MemberBean memberBean);
	
	RtBookingBean updateRtBooking(RtBookingBean bean);

	RtBookingBean insertRtBooking(RtBookingBean bean);

	boolean deleteRtBookingbgId(Integer bgId);
	
	
}

