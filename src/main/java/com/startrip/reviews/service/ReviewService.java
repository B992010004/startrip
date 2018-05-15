package com.startrip.reviews.service;

import java.util.List;

import com.startrip.reviews.model.ReviewBean;

public interface ReviewService {
	List<ReviewBean> getAllReviews();
	List<ReviewBean> getReviewsByRestaurantId(int restaurantId);
	List<Long> getRankByRestaurantId(int restaurantId);
	
	void addReview(ReviewBean review);

	void update(int restaurantId, ReviewBean review);
}
