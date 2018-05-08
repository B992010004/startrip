package com.startrip.restaurant.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.restaurant.exception.RtReviewsNotFoundException;
import com.startrip.restaurant.rtmodel.RtReviewsBean;

@Repository
public class RtReviewsRepositoryImp implements RtReviewsRepository {
	
	@Autowired
	SessionFactory factory;

	@Override
	public RtReviewsBean getAllRtReviewsrwId(Integer rwId) {
		RtReviewsBean rri = null;
		Session session = factory.getCurrentSession();
		rri = session.get(RtReviewsBean.class, rwId);
		if(rri == null) throw new RtReviewsNotFoundException(rwId);
		return rri;
	}

	@Override
	public RtReviewsBean getAllRtReviewsrtTitle(String rtTitle) {
		RtReviewsBean rdt = null;
		Session session = factory.getCurrentSession();
		rdt = session.get(RtReviewsBean.class, rtTitle);
		if(rdt == null) throw new RtReviewsNotFoundException(rtTitle);
		return rdt;
	}

	@Override
	public RtReviewsBean updateRtReviews(RtReviewsBean bean) {
		Session session = factory.getCurrentSession();
		RtReviewsBean rrb = session.get(RtReviewsBean.class, bean.getRwId());
		session.save(rrb);
		return rrb;
	}

	@Override
	public RtReviewsBean insertRtReviews(RtReviewsBean bean) {
		Session session = factory.getCurrentSession();
		session.save(bean);
		return bean;
	}

	@Override
	public boolean deleteRtReviewsrwId(Integer rwId) {
		Session session = factory.getCurrentSession();
		RtReviewsBean rri = session.get(RtReviewsBean.class, rwId);
		if (rri != null) {
			session.delete(rri);
			return true;
		}
		return false;
	}



}
