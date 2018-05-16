package com.startrip.reviews.repository;

import java.util.List;

import com.startrip.reviews.model.ReviewBean;
import com.startrip.reviews.model.ReviewSelectCriteria;

public interface ReviewRepository {
	List<ReviewBean> getAllReviews();
	List<ReviewBean> getReviewsByRestaurantId(int hotelId);
	List<Long> getRankByRestaurantId(int hotelId);
	
	void addReview(ReviewBean review);
	
	List<ReviewBean> selectByCriteria(ReviewSelectCriteria reviewSelectCriteria);

	void update(int hotelId, ReviewBean review);



}
