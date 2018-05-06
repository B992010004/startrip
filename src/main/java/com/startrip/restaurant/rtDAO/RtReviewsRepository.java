package com.startrip.restaurant.rtDAO;

import com.startrip.restaurant.rtinterface.RtReviewsInterface;
import com.startrip.restaurant.rtmodel.RtReviewsBean;

public class RtReviewsRepository implements RtReviewsInterface {

	@Override
	public RtReviewsBean select(Integer rwId) {
		return null;
	}

	@Override
	public RtReviewsBean select(String rtTitle) {
		return null;
	}

	@Override
	public RtReviewsBean update(RtReviewsBean bean) {
		return null;
	}

	@Override
	public RtReviewsBean insert(RtReviewsBean bean) {
		return null;
	}

	@Override
	public boolean delete(Integer rwId) {
		return false;
	}

	@Override
	public boolean delete(String rtTitle) {
		return false;
	}

}
