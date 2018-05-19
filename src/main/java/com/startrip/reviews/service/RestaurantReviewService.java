package com.startrip.reviews.service;

import java.util.List;

import com.startrip.reviews.model.RestaurantReview;
import com.startrip.reviews.model.ReviewSelectCriteria;

public interface RestaurantReviewService {

	List<RestaurantReview> getAllRestaurantReviews();

	List<RestaurantReview> getRestaurantReviewsByRestaurantId(Integer restaurantId);

	List<Long> getRankByRestaurantId(Integer restaurantId);

	void addRestaurantReview(RestaurantReview restaurantReview);

	List<RestaurantReview> selectRestaurantReviewsByCriteria(ReviewSelectCriteria reviewSelectCriteria);

	void update(Integer restaurantId, RestaurantReview restaurantReview);
}
