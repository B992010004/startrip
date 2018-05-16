package com.startrip.reviews.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.startrip.reviews.model.ReviewBean;

@Repository
public interface ReviewRepositoryJPA extends JpaRepository<ReviewBean, Integer> {
	// List<ReviewBean> getAllReviews();
	List<ReviewBean> findByRestaurantId(Integer restaurantId);

//	@Query(value = "SELECT count(overallRank) FROM ReviewBean rb WHERE rb.restaurantId = ? GROUP BY rb.overallRank", nativeQuery = true)
//	List<Long> getRankByRestaurantId(Integer restaurantId);

	// void addReview(ReviewBean review);
	// void update(int hotelId, ReviewBean review);

}
