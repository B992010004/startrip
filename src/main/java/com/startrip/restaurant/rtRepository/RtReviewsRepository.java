package com.startrip.restaurant.rtRepository;

import com.startrip.restaurant.rtModel.RtReviewsBean;

public interface RtReviewsRepository {

	RtReviewsBean getAllRtReviewsrwId(Integer rwId);
	
	RtReviewsBean getAllRtReviewsrtTitle(String rtTitle);

	RtReviewsBean updateRtReviews(RtReviewsBean bean);

	RtReviewsBean insertRtReviews(RtReviewsBean bean);

	boolean deleteRtReviewsrwId(Integer rwId);
	
}

