package com.startrip.reviews.repository;

import java.util.List;

import com.startrip.reviews.model.HotelReview;
import com.startrip.reviews.model.ReviewSelectCriteria;

public interface HotelReviewRepository {
	
	List<HotelReview> getAllHotelReviews();
	List<HotelReview> getHotelReviewsByHotelId(Integer hotelId);
	List<Object[]> getRankByHotelId(Integer hotelId);
	
	void addHotelReview(HotelReview hotelReview);
	
	List<HotelReview> selectHotelReviewsByCriteria(ReviewSelectCriteria reviewSelectCriteria);

	void update(Integer hotelId, HotelReview hotelReview);



}
