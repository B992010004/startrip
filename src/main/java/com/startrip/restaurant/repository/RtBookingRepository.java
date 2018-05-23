package com.startrip.restaurant.repository;


import java.util.List;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.restaurant.model.RtBookingBean;
import com.startrip.restaurant.model.RtDetailsBean;

public interface RtBookingRepository {
	
	List<RtBookingBean> getAllall();
	
	List<RtBookingBean> getAllRtBookingmemberBean(MemberBean memberBean);
	
	RtBookingBean updateRtBooking(RtBookingBean bean);

	RtBookingBean insertRtBooking(RtBookingBean bean);

	boolean deleteRtBookingbgId(Integer bgId);
	
	List<RtBookingBean> getRtBookingmember(int memberId);
	
}

