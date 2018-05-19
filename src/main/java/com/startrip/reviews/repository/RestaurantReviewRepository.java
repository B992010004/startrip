package com.startrip.reviews.repository;

import java.util.List;

import com.startrip.reviews.model.RestaurantReview;
import com.startrip.reviews.model.ReviewSelectCriteria;

public interface RestaurantReviewRepository {
	List<RestaurantReview> getAllRestaurantReviews();

	List<RestaurantReview> getRestaurantReviewsByRestaurantId(Integer restaurantId);

	List<Long> getRankByRestaurantId(Integer restaurantId);

	void addRestaurantReview(RestaurantReview restaurantReview);

	List<RestaurantReview> selectRestaurantReviewsByCriteria(ReviewSelectCriteria reviewSelectCriteria);

	void update(Integer restaurantId, RestaurantReview restaurantReview);

}
