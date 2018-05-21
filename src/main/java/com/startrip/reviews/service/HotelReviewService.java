package com.startrip.reviews.service;

import java.util.List;

import com.startrip.reviews.model.HotelReview;
import com.startrip.reviews.model.ReviewSelectCriteria;

public interface HotelReviewService {
	List<HotelReview> getAllHotelReviews();

	List<HotelReview> getHotelReviewsByHotelId(Integer hotelId);

	List<Long> getRankByHotelId(Integer hotelId);

	void addHotelReview(HotelReview hotelReview);

	List<HotelReview> selectHotelReviewsByCriteria(ReviewSelectCriteria reviewSelectCriteria);

	void update(Integer hotelId, HotelReview hotelReview);

}