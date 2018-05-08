package com.startrip.reviews.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.reviews.model.ReviewBean;
import com.startrip.reviews.repository.ReviewRepository;

@Service
public class ReviewServiceImp implements ReviewService {

	@Autowired
	private ReviewRepository reviewRepositoryImp;

	@Transactional
	@Override
	public List<ReviewBean> getAllReviews() {
		return reviewRepositoryImp.getAllReviews();
	}

	@Transactional
	@Override
	public List<ReviewBean> getReviewsByHotelId(int hotelId) {
		return reviewRepositoryImp.getReviewsByHotelId(hotelId);
	}

	@Transactional
	@Override
	public void addReview(ReviewBean review) {
		reviewRepositoryImp.addReview(review);
	}

	//update的方法還沒做
	@Transactional
	@Override
	public void update(int hotelId, ReviewBean review) {
		// TODO Auto-generated method stub

	}

	@Transactional
	@Override
	public List<Long> getRankByHotelId(int hotelId) {
		return reviewRepositoryImp.getRankByHotelId(hotelId);
	}

}
