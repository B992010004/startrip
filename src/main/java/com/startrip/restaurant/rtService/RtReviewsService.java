package com.startrip.restaurant.rtService;

import com.startrip.restaurant.rtModel.RtReviewsBean;

public interface RtReviewsService {

	RtReviewsBean getAllRtReviewsrwId(Integer rwId);
	
	RtReviewsBean getAllRtReviewsrtTitle(String rtTitle);

	RtReviewsBean updateRtReviews(RtReviewsBean bean);

	RtReviewsBean insertRtReviews(RtReviewsBean bean);

	boolean deleteRtReviewsrwId(Integer rwId);
	
}
