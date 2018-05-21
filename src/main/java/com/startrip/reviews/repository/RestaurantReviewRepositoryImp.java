package com.startrip.reviews.repository;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.reviews.model.RestaurantReview;
import com.startrip.reviews.model.ReviewSelectCriteria;

@Repository
public class RestaurantReviewRepositoryImp implements RestaurantReviewRepository {
	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<RestaurantReview> getAllRestaurantReviews() {
		String hql = "FROM RestaurantReview";
		Session session = null;
		List<RestaurantReview> list = new ArrayList<>();
		session = sessionFactory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		System.out.println(list);
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<RestaurantReview> getRestaurantReviewsByRestaurantId(Integer restaurantId) {
		List<RestaurantReview> list = new ArrayList<>();
		String hql = "FROM RestaurantReview WHERE restaurantId = :id";
		Session session = sessionFactory.getCurrentSession();
		list = session.createQuery(hql).setParameter("id", restaurantId).getResultList();

		return list;
	}

	@Override
	public void addRestaurantReview(RestaurantReview restaurantReview) {
		Session session = sessionFactory.getCurrentSession();
		restaurantReview.setUpdateTime(new Timestamp(new Date().getTime()));
		session.save(restaurantReview);
	}

	@Override
	public void update(Integer restaurantId, RestaurantReview restaurantReview) {
		// String hql = "UPDATE ReviewBean SET stock = :newQuantity WHERE hotelId =
		// :id";
		// Session session = sessionFacory.getCurrentSession();
		// int n = session.createQuery(hql).setParameter("newQuantity",
		// newQuantity).setParameter("id", productId)
		// .executeUpdate();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Long> getRankByRestaurantId(Integer restaurantId) {
		String hql = "SELECT COUNT(overallRank) FROM RestaurantReview rr WHERE rr.restaurantId = :restaurantId GROUP BY rr.overallRank";
		Session session = sessionFactory.getCurrentSession();
		List<Long> list = new ArrayList<>();
		list = session.createQuery(hql).setParameter("restaurantId", restaurantId).list();
		// System.out.println(list);
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<RestaurantReview> selectRestaurantReviewsByCriteria(ReviewSelectCriteria reviewSelectCriteria) {
		String hql = null;
		StringBuffer queryString = new StringBuffer();
		boolean crteriaIsAvailable = false;

		if (reviewSelectCriteria.getFamily() != null) {
			queryString.append("tripType = :family ");
			crteriaIsAvailable = true;
		}

		if (reviewSelectCriteria.getCouple() != null) {
			if (crteriaIsAvailable) {
				queryString.append("OR ");
			}
			queryString.append("tripType = :couple ");
			crteriaIsAvailable = true;
		}

		if (reviewSelectCriteria.getAlone() != null) {
			if (crteriaIsAvailable) {
				queryString.append("OR ");
			}
			queryString.append("tripType = :alone ");
			crteriaIsAvailable = true;
		}

		if (reviewSelectCriteria.getBusiness() != null) {
			if (crteriaIsAvailable) {
				queryString.append("OR ");
			}
			queryString.append("tripType = :business ");
			crteriaIsAvailable = true;
		}

		if (reviewSelectCriteria.getFriends() != null) {
			if (crteriaIsAvailable) {
				queryString.append("OR ");
			}
			queryString.append("tripType = :friends ");
			crteriaIsAvailable = true;
		}

		// 塞Pk鍵
		if (reviewSelectCriteria.getpK() != null) {
			if (crteriaIsAvailable) {
				queryString.append("AND ");
			}
			queryString.append("restaurantId = :restaurantId ");
			crteriaIsAvailable = true;
		}

		String fromClause = crteriaIsAvailable ? "FROM RestaurantReview rr WHERE " : "FROM RestaurantReview rr ";
		if (crteriaIsAvailable) {
			hql = fromClause + queryString;
		} else {
			hql = fromClause;
		}

		System.out.println("hql看這裡 " + hql);

		Session session = sessionFactory.getCurrentSession();
		List<RestaurantReview> list = new ArrayList<>();
		Query prepareStmt = session.createQuery(hql);

		if (reviewSelectCriteria.getFamily() != null) {
			prepareStmt.setParameter("family", reviewSelectCriteria.getFamily());
		}

		if (reviewSelectCriteria.getCouple() != null) {
			prepareStmt.setParameter("couple", reviewSelectCriteria.getCouple());
		}

		if (reviewSelectCriteria.getAlone() != null) {
			prepareStmt.setParameter("alone", reviewSelectCriteria.getAlone());
		}

		if (reviewSelectCriteria.getBusiness() != null) {
			prepareStmt.setParameter("business", reviewSelectCriteria.getBusiness());
		}

		if (reviewSelectCriteria.getFriends() != null) {
			prepareStmt.setParameter("friends", reviewSelectCriteria.getFriends());
		}

		if (reviewSelectCriteria.getpK() != null) {
			prepareStmt.setParameter("restaurantId", reviewSelectCriteria.getpK());
		}

		list = prepareStmt.getResultList();
		// System.out.println(list);
		return list;
	}

}