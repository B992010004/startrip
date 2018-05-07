package com.startrip.restaurant.rtDAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
<<<<<<< HEAD
import com.startrip.restaurant.rtexception.RtReviewsNotFoundException;
=======
import org.springframework.stereotype.Repository;

>>>>>>> 87187163b5ae47dcabeb9ca8245b8e52bf84f22e
import com.startrip.restaurant.rtinterface.RtReviewsInterface;
import com.startrip.restaurant.rtmodel.RtReviewsBean;

@Repository
public class RtReviewsRepository implements RtReviewsInterface {
	
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
