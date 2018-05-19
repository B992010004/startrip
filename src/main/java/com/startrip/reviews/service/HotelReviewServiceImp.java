package com.startrip.reviews.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.reviews.model.HotelReview;
import com.startrip.reviews.model.ReviewSelectCriteria;
import com.startrip.reviews.repository.HotelReviewRepository;

@Service
public class HotelReviewServiceImp implements HotelReviewService {

	@Autowired
	private HotelReviewRepository reviewRepositoryImp;
	// @Autowired
	// private ReviewRepositoryJPA reviewRepositoryImp;

	@Transactional
	@Override
	public List<HotelReview> getAllHotelReviews() {
		return reviewRepositoryImp.getAllHotelReviews();
		// return reviewRepositoryImp.findAll();
	}

	@Transactional
	@Override
	public List<HotelReview> getHotelReviewsByHotelId(Integer hotelId) {
		return reviewRepositoryImp.getHotelReviewsByHotelId(hotelId);
		// return reviewRepositoryImp.findByRestaurantId(restaurantId);
	}

	@Transactional
	@Override
	public void addHotelReview(HotelReview hotelReview) {
		reviewRepositoryImp.addHotelReview(hotelReview);
		// reviewRepositoryImp.save(review);
	}

	// update的方法還沒做
	@Transactional
	@Override
	public void update(Integer hotelId, HotelReview hotelReview) {
		// reviewRepositoryImp.save(review);
	}

	@Transactional
	@Override
	public List<Long> getRankByHotelId(Integer hotelId) {
		// return reviewRepositoryImp.getRankByRestaurantId(restaurantId);
		return reviewRepositoryImp.getRankByHotelId(hotelId);
	}

	@Transactional
	@Override
	public List<HotelReview> selectHotelReviewsByCriteria(ReviewSelectCriteria reviewSelectCriteria) {
		return reviewRepositoryImp.selectHotelReviewsByCriteria(reviewSelectCriteria);
	}

}
