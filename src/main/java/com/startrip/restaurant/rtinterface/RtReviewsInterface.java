package com.startrip.restaurant.rtinterface;

import com.startrip.restaurant.rtmodel.RtReviewsBean;

public interface RtReviewsInterface {

	RtReviewsBean select(Integer rwId);
	
	RtReviewsBean select(String rtTitle);

	RtReviewsBean update(RtReviewsBean bean);

	RtReviewsBean insert(RtReviewsBean bean);

	boolean delete(Integer rwId);

	boolean delete(String rtTitle);
	
}

