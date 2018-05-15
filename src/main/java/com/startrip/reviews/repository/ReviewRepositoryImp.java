package com.startrip.reviews.repository;


import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.reviews.model.ReviewBean;

@Repository
public class ReviewRepositoryImp implements ReviewRepository {

	@Autowired
	SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<ReviewBean> getAllReviews() {
		String hql = "FROM ReviewBean";
		Session session = null;
		List<ReviewBean> list = new ArrayList<>();
		session = sessionFactory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		System.out.println(list);
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ReviewBean> getReviewsByRestaurantId(int restaurantId) {
		List<ReviewBean> list = new ArrayList<>();
		String hql = "FROM ReviewBean WHERE restaurantId = :id";
		Session session = sessionFactory.getCurrentSession();
		list = session.createQuery(hql).setParameter("id", restaurantId).getResultList();

		return list;
	}

	@Override
	public void addReview(ReviewBean review) {
		Session session = sessionFactory.getCurrentSession();
		review.setUpdateTime(new Timestamp(new Date().getTime()));
		session.save(review);
	}

	@Override
	public void update(int restaurantId, ReviewBean review) {
//		String hql = "UPDATE ReviewBean SET stock = :newQuantity WHERE hotelId = :id";
//		Session session = sessionFacory.getCurrentSession();
//		int n = session.createQuery(hql).setParameter("newQuantity", newQuantity).setParameter("id", productId)
//				.executeUpdate();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Long> getRankByRestaurantId(int restaurantId) {
		String hql = "SELECT count(overallRank) FROM ReviewBean rb WHERE rb.restaurantId = :restaurantId GROUP BY rb.overallRank";
		Session session = sessionFactory.getCurrentSession();
		List<Long> list = new ArrayList<>();
		list = session.createQuery(hql).setParameter("restaurantId", restaurantId).list();
//		System.out.println(list);
		return list;		
	}
}
