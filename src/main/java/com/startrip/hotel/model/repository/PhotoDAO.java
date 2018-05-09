package com.startrip.hotel.model.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.persistent.PhotoBean;
import com.startrip.hotel.tool.HQL;
import com.startrip.hotel.tool.HQLQuery;

@Repository
public class PhotoDAO {
	@Autowired
	SessionFactory factory;

	public void insert(PhotoBean bean) {
		Session session = factory.getCurrentSession();
		session.save(bean);
	}

	public void update(PhotoBean bean) {
		Session session = factory.getCurrentSession();
		session.update(bean);
	}

	public Integer countByHotelid(Integer hotelid) {
		Session session = factory.getCurrentSession();
		Long temp  = session.createQuery(HQLQuery.get(HQL.COUNT_PHOTO_BY_HOTELID),Long.class).setParameter("hotelid", hotelid)
		.uniqueResult();
		return Integer.valueOf(temp.intValue());
	}
	public List<PhotoBean> selectByHotelid(Integer hotelid){
		Session session = factory.getCurrentSession();
		return session.createQuery(HQLQuery.get(HQL.SELECT_PHOTO_BY_HOTELID),PhotoBean.class).setParameter("hotelid",hotelid).list();
	}
	
	public PhotoBean selectByPk(Integer photoid) {
		Session session = factory.getCurrentSession();
		return session.get(PhotoBean.class, photoid);
	}
}
