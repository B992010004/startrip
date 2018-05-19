package com.startrip.reviews.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.reviews.model.RestaurantReview;
import com.startrip.reviews.model.ReviewSelectCriteria;
import com.startrip.reviews.repository.RestaurantReviewRepository;

@Service
public class RestaurantReviewServiceImp implements RestaurantReviewService {

	@Autowired
	private RestaurantReviewRepository restaurantReviewRepository;

	@Transactional
	@Override
	public List<RestaurantReview> getAllRestaurantReviews() {
		return restaurantReviewRepository.getAllRestaurantReviews();
	}

	@Transactional
	@Override
	public List<RestaurantReview> getRestaurantReviewsByRestaurantId(Integer restaurantId) {
		return restaurantReviewRepository.getRestaurantReviewsByRestaurantId(restaurantId);
	}

	@Transactional
	@Override
	public List<Long> getRankByRestaurantId(Integer restaurantId) {
		return restaurantReviewRepository.getRankByRestaurantId(restaurantId);
	}

	@Transactional
	@Override
	public void addRestaurantReview(RestaurantReview restaurantReview) {
		restaurantReviewRepository.addRestaurantReview(restaurantReview);
	}

	@Transactional
	@Override
	public List<RestaurantReview> selectRestaurantReviewsByCriteria(ReviewSelectCriteria reviewSelectCriteria) {
		return restaurantReviewRepository.selectRestaurantReviewsByCriteria(reviewSelectCriteria);
	}

	@Transactional
	@Override
	public void update(Integer restaurantId, RestaurantReview restaurantReview) {
		// TODO Auto-generated method stub

	}

}
