package com.startrip.reviews.repository;

import java.util.List;

import com.startrip.reviews.model.ReviewBean;

public interface ReviewRepository {
	List<ReviewBean> getAllReviews();
	List<ReviewBean> getReviewsByHotelId(int hotelId);
	List<Integer> getRankByHotelId(int hotelId);
	

	void addReview(ReviewBean review);

	void update(int hotelId, ReviewBean review);



}
