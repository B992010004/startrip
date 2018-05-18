package com.startrip.hotel.model.repository;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.SearchHotel;
import com.startrip.hotel.model.persistent.HotelsBean;
import com.startrip.hotel.tool.HQL;
import com.startrip.hotel.tool.HQLQuery;
import com.startrip.reviews.model.ReviewBean;

@Repository
public class HotelsDAO {
	@Autowired
	SessionFactory factory;

	public int insert(HotelsBean bean) {
		Session session = factory.getCurrentSession();
		int pk = (Integer) session.save(bean);
		return pk;
	}

	public HotelsBean selectByPk(Integer hotelid) {
		Session session = factory.getCurrentSession();
		return session.get(HotelsBean.class, hotelid);
	}

	public void update(HotelsBean bean) {
		Session session = factory.getCurrentSession();
		session.update(bean);
	}

	public List<HotelsBean> selectByMemberid(Integer memberid) {
		Session session = factory.getCurrentSession();
		return session.createQuery(HQLQuery.get(HQL.SELECT_HOTELS_BY_MEMBERID), HotelsBean.class)
				.setParameter("memberid", memberid).list();
	}
	
//	public List<HotelsBean> selectByCriteria(SearchHotel searchHotel) {
//		Session session = factory.getCurrentSession();
//		String hql = null;
//		StringBuffer queryString = new StringBuffer();
//		boolean crteriaIsAvailable = false;
//
//		if (searchHotel.getSearchSrting() != null) {
//			queryString.append("tripType = :family ");
//			crteriaIsAvailable = true;
//		}
//
//		if (searchHotel.getCheckIn() != null) {
//			if (crteriaIsAvailable) {
//				queryString.append("OR ");
//			}
//			queryString.append("tripType = :couple ");
//			crteriaIsAvailable = true;
//		}
//
//		if (searchHotel.getCheckOut() != null) {
//			if (crteriaIsAvailable) {
//				queryString.append("OR ");
//			}
//			queryString.append("tripType = :alone ");
//			crteriaIsAvailable = true;
//		}
//
//		if (searchHotel.getPersonNum() != null) {
//			if (crteriaIsAvailable) {
//				queryString.append("OR ");
//			}
//			queryString.append("tripType = :business ");
//			crteriaIsAvailable = true;
//		}
//
//		String fromClause = crteriaIsAvailable ? "FROM HotelsBean hb WHERE " : "FROM ReviewBean rb ";
//		if (crteriaIsAvailable) {
//			hql = fromClause + queryString;
//		}
//		
//		System.out.println("hql看這裡"+hql);
//
//		
//		List<ReviewBean> list = new ArrayList<>();
//		Query prepareStmt = session.createQuery(hql);
//
//		if (searchHotel.getSearchSrting() != null) {
//			prepareStmt.setParameter("family", searchHotel.getSearchSrting());
//		}
//		
//		if (searchHotel.getCheckIn() != null) {
//			prepareStmt.setParameter("couple", searchHotel.getCouple());
//		}
//		
//		if (searchHotel.getAlone() != null) {
//			prepareStmt.setParameter("alone", searchHotel.getAlone());
//		}
//		
//		if (searchHotel.getBusiness() != null) {
//			prepareStmt.setParameter("business", searchHotel.getBusiness());
//		}
//		
//		if (searchHotel.getFriends() != null) {
//			prepareStmt.setParameter("friends", searchHotel.getFriends());
//		}
//
//		list = prepareStmt.getResultList();
//		// System.out.println(list);
//		return list;
//	}

}
