package com.startrip.hotel.repository;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.HotelsBean;
import com.startrip.hotel.model.SearchHotel;
import com.startrip.hotel.tool.HQL;
import com.startrip.hotel.tool.HQLQuery;

@Repository
public class HotelsDAO implements HotelDAOInterface {
	@Autowired
	SessionFactory factory;

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.startrip.hotel.model.repository.HotelInterface#insert(com.startrip.hotel.
	 * model.persistent.HotelsBean)
	 */
	@Override
	public int insert(HotelsBean bean) {
		Session session = factory.getCurrentSession();
		int pk = (Integer) session.save(bean);
		return pk;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.startrip.hotel.model.repository.HotelInterface#selectByPk(java.lang.
	 * Integer)
	 */
	@Override
	public HotelsBean selectByPk(Integer hotelid) {
		Session session = factory.getCurrentSession();
		return session.get(HotelsBean.class, hotelid);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.startrip.hotel.model.repository.HotelInterface#update(com.startrip.hotel.
	 * model.persistent.HotelsBean)
	 */
	@Override
	public void update(HotelsBean bean) {
		Session session = factory.getCurrentSession();
		session.update(bean);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.startrip.hotel.model.repository.HotelInterface#selectByMemberid(java.lang
	 * .Integer)
	 */
	@Override
	public List<HotelsBean> selectByMemberid(Integer memberid) {
		Session session = factory.getCurrentSession();
		return session.createQuery(HQLQuery.get(HQL.SELECT_HOTELS_BY_MEMBERID), HotelsBean.class)
				.setParameter("memberid", memberid).list();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.startrip.hotel.model.repository.HotelInterface#selectByCriteria(com.
	 * startrip.hotel.model.SearchHotel)
	 */
	@Override
	@SuppressWarnings("unchecked")
	public List<HotelsBean> selectByCriteria(SearchHotel searchHotel) {
		Session session = factory.getCurrentSession();
		String hql = null;
		StringBuffer queryString = new StringBuffer();
		boolean crteriaIsAvailable = false;

		if (searchHotel.getSearchSrting() != "") {
			queryString.append("hotelname like :SearchSrting0 OR hoteladdress like :SearchSrting1 ");
			// queryString.append("hotelname = :SearchSrting0 ");
			crteriaIsAvailable = true;
			
		}else {
			//給個預設
			queryString.append("hotelname like :SearchSrting0 OR hoteladdress like :SearchSrting1 ");
			// queryString.append("hotelname = :SearchSrting0 ");
			crteriaIsAvailable = true;
		}

		// if (searchHotel.getCheckIn() != null) {
		// if (crteriaIsAvailable) {
		// queryString.append("OR ");
		// }
		// queryString.append("tripType = :couple ");
		// crteriaIsAvailable = true;
		// }
		//
		// if (searchHotel.getCheckOut() != null) {
		// if (crteriaIsAvailable) {
		// queryString.append("OR ");
		// }
		// queryString.append("tripType = :alone ");
		// crteriaIsAvailable = true;
		// }
		//
		// if (searchHotel.getPersonNum() != null) {
		// if (crteriaIsAvailable) {
		// queryString.append("OR ");
		// }
		// queryString.append("tripType = :business ");
		// crteriaIsAvailable = true;
		// }

		String fromClause = crteriaIsAvailable ? "FROM hotels hotel WHERE " : "FROM hotels hotel ";
		if (crteriaIsAvailable) {
			hql = fromClause + queryString;
		} else {
			hql = fromClause;
		}

		System.out.println("hql看這裡 " + hql);

		List<HotelsBean> list = new ArrayList<>();
		Query prepareStmt = session.createQuery(hql);

		if (searchHotel.getSearchSrting() != "") {
			prepareStmt.setParameter("SearchSrting0", "%" + searchHotel.getSearchSrting() + "%");
			prepareStmt.setParameter("SearchSrting1", "%" + searchHotel.getSearchSrting() + "%");
		}else {
			//給個預設
			prepareStmt.setParameter("SearchSrting0", "%花蓮%");
			prepareStmt.setParameter("SearchSrting1", "%花蓮%");
		}

		// if (searchHotel.getCheckIn() != null) {
		// prepareStmt.setParameter("couple", searchHotel.getCheckIn());
		// }
		//
		// if (searchHotel.getCheckOut() != null) {
		// prepareStmt.setParameter("alone", searchHotel.getCheckOut());
		// }
		//
		// if (searchHotel.getPersonNum() != null) {
		// prepareStmt.setParameter("business", searchHotel.getPersonNum());
		// }

		list = prepareStmt.getResultList();
		// System.out.println(list);
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<HotelsBean> selectPage(Integer firstResult, Integer maxResults) {
		Session session = factory.getCurrentSession();
		List<HotelsBean> list = new ArrayList<>();
		//1.创建Query对象与  
        Query query = session.createQuery("from hotels order by hotelid ASC");
        query.setFirstResult(firstResult);//从什么位置开始，默认为0  
        query.setMaxResults(maxResults);//最多检出的条数  
        //4.执行SQL  
        list = query.getResultList();  
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Integer> count() {
		Session session = factory.getCurrentSession();
		String hql = "SELECT count(distinct hotelid) FROM hotels";
		Query query = session.createQuery(hql);
		List<Integer> results = query.getResultList();
		return results;
	}

}
