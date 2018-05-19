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

import com.startrip.reviews.model.ReviewBean;
import com.startrip.reviews.model.ReviewSelectCriteria;

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
		// String hql = "UPDATE ReviewBean SET stock = :newQuantity WHERE hotelId =
		// :id";
		// Session session = sessionFacory.getCurrentSession();
		// int n = session.createQuery(hql).setParameter("newQuantity",
		// newQuantity).setParameter("id", productId)
		// .executeUpdate();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Long> getRankByRestaurantId(int restaurantId) {
		String hql = "SELECT count(overallRank) FROM ReviewBean rb WHERE rb.restaurantId = :restaurantId GROUP BY rb.overallRank";
		Session session = sessionFactory.getCurrentSession();
		List<Long> list = new ArrayList<>();
		list = session.createQuery(hql).setParameter("restaurantId", restaurantId).list();
		// System.out.println(list);
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ReviewBean> selectByCriteria(ReviewSelectCriteria reviewSelectCriteria) {
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
		
		//塞Pk鍵
		if (reviewSelectCriteria.getHotelId() != null) {
			if (crteriaIsAvailable) {
				queryString.append("AND ");
			}
			queryString.append("restaurantId = :restaurantId ");
			crteriaIsAvailable = true;
		}

		String fromClause = crteriaIsAvailable ? "FROM ReviewBean rb WHERE " : "FROM ReviewBean rb ";
		if (crteriaIsAvailable) {
			hql = fromClause + queryString;
		} else {
			hql = fromClause;
		}
		
		System.out.println("hql看這裡 "+hql);

		Session session = sessionFactory.getCurrentSession();
		List<ReviewBean> list = new ArrayList<>();
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
		
		if (reviewSelectCriteria.getFriends() != null) {
			prepareStmt.setParameter("restaurantId", reviewSelectCriteria.getHotelId());
		}

		list = prepareStmt.getResultList();
		// System.out.println(list);
		return list;
	}
}
