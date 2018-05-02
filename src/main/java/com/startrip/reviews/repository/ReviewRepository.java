package com.startrip.reviews.repository;

import java.util.List;

import com.startrip.reviews.model.Review;

public interface ReviewRepository {
	List<Review> getAllReviews();
	Review getReviewByHotelId(int hotelId);

	void addReview(Review review);

	void update(int hotelId, Review review);



}
