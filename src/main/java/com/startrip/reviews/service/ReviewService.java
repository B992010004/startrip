package com.startrip.reviews.service;

import java.util.List;

import com.startrip.reviews.model.ReviewBean;

public interface ReviewService {
	List<ReviewBean> getAllReviews();
	List<ReviewBean> getReviewsByHotelId(int hotelId);
	List<Long> getRankByHotelId(int hotelId);
	
	void addReview(ReviewBean review);

	void update(int hotelId, ReviewBean review);
}
