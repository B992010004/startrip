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

import com.startrip.reviews.model.HotelReview;
import com.startrip.reviews.model.ReviewSelectCriteria;

@Repository
public class HotelReviewRepositoryImp implements HotelReviewRepository {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<HotelReview> getAllHotelReviews() {
		String hql = "FROM HotelReview";
		Session session = null;
		List<HotelReview> list = new ArrayList<>();
		session = sessionFactory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		System.out.println(list);
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<HotelReview> getHotelReviewsByHotelId(Integer hotelId) {
		List<HotelReview> list = new ArrayList<>();
		String hql = "FROM HotelReview WHERE HotelId = :id";
		Session session = sessionFactory.getCurrentSession();
		list = session.createQuery(hql).setParameter("id", hotelId).getResultList();

		return list;
	}

	@Override
	public void addHotelReview(HotelReview hotelReview) {
		Session session = sessionFactory.getCurrentSession();
		hotelReview.setUpdateTime(new Timestamp(new Date().getTime()));
		session.save(hotelReview);
	}

	@Override
	public void update(Integer hotelId, HotelReview hotelReview) {
		// String hql = "UPDATE ReviewBean SET stock = :newQuantity WHERE hotelId =
		// :id";
		// Session session = sessionFacory.getCurrentSession();
		// int n = session.createQuery(hql).setParameter("newQuantity",
		// newQuantity).setParameter("id", productId)
		// .executeUpdate();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object[]> getRankByHotelId(Integer hotelId) {
		String hql = "SELECT hr.overallRank, COUNT(overallRank) FROM HotelReview hr WHERE hr.hotelId = :hotelId GROUP BY hr.overallRank";
		Session session = sessionFactory.getCurrentSession();
		List<Object[]> list = new ArrayList<>();
		list = session.createQuery(hql).setParameter("hotelId", hotelId).list();

		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<HotelReview> selectHotelReviewsByCriteria(ReviewSelectCriteria reviewSelectCriteria) {
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
			queryString.append("hotelId = :hotelId ");
			crteriaIsAvailable = true;
		}

		String fromClause = crteriaIsAvailable ? "FROM HotelReview hr WHERE " : "FROM HotelReview hr ";
		if (crteriaIsAvailable) {
			hql = fromClause + queryString;
		} else {
			hql = fromClause;
		}

		System.out.println("hql看這裡 " + hql);

		Session session = sessionFactory.getCurrentSession();
		List<HotelReview> list = new ArrayList<>();
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
			prepareStmt.setParameter("hotelId", reviewSelectCriteria.getpK());
		}

		list = prepareStmt.getResultList();
		// System.out.println(list);
		return list;
	}
}
