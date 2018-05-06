package com.startrip.restaurant.rtDAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.startrip.restaurant.rtinterface.RtReviewsInterface;
import com.startrip.restaurant.rtmodel.RtReviewsBean;

public class RtReviewsRepository implements RtReviewsInterface {
	
	@Autowired
	SessionFactory factory;

	@Override
	public RtReviewsBean getAllRtReviewsrwId(Integer rwId) {
		return null;
	}

	@Override
	public RtReviewsBean getAllRtReviewsrtTitle(String rtTitle) {
		return null;
	}

	@Override
	public RtReviewsBean updateRtReviews(RtReviewsBean bean) {
		return null;
	}

	@Override
	public RtReviewsBean insertRtReviews(RtReviewsBean bean) {
		return null;
	}

	@Override
	public boolean deleteRtReviewsrwId(Integer rwId) {
		return false;
	}

	@Override
	public boolean deleteRtReviewsrtTitle(String rtTitle) {
		return false;
	}


}
