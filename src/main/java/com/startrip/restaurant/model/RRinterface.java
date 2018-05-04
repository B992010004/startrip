package com.startrip.restaurant.model;

public interface RRinterface {

	RtReviewsBean select(Integer rwId);
	
	RtReviewsBean select(String rtTitle);

	RtReviewsBean update(RtReviewsBean bean);

	RtReviewsBean insert(RtReviewsBean bean);

	boolean delete(Integer rwId);

	boolean delete(String rtTitle);
	
}

