package com.startrip.restaurant.rtInterface;

import com.startrip.restaurant.rtModel.RtReviewsBean;

public interface RtReviewsInterface {

	RtReviewsBean getAllRtReviewsrwId(Integer rwId);
	
	RtReviewsBean getAllRtReviewsrtTitle(String rtTitle);

	RtReviewsBean updateRtReviews(RtReviewsBean bean);

	RtReviewsBean insertRtReviews(RtReviewsBean bean);

	boolean deleteRtReviewsrwId(Integer rwId);
	
}

