package com.startrip.restaurant.rtinterface;

import com.startrip.restaurant.rtmodel.RtReviewsBean;

public interface RtReviewsInterface {

	RtReviewsBean getAllRtReviewsrwId(Integer rwId);
	
	RtReviewsBean getAllRtReviewsrtTitle(String rtTitle);

	RtReviewsBean updateRtReviews(RtReviewsBean bean);

	RtReviewsBean insertRtReviews(RtReviewsBean bean);

	boolean deleteRtReviewsrwId(Integer rwId);

	boolean deleteRtReviewsrtTitle(String rtTitle);
	
}

