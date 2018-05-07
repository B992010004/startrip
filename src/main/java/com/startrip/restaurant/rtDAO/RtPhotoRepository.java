package com.startrip.restaurant.rtDAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.restaurant.rtException.RtReviewsNotFoundException;
import com.startrip.restaurant.rtInterface.RtPhotoInterface;
import com.startrip.restaurant.rtModel.RtPhotoBean;

@Repository
public class RtPhotoRepository implements RtPhotoInterface {
	
	@Autowired
	SessionFactory factory;

	@Override
	public RtPhotoBean getAllRtPhotortId(Integer rtId) {
		RtPhotoBean rpi = null;
		Session session = factory.getCurrentSession();
		rpi = session.get(RtPhotoBean.class, rtId);
		if(rpi == null) throw new RtReviewsNotFoundException(rtId);
		return rpi;
	}

	@Override
	public RtPhotoBean updateRtPhoto(RtPhotoBean bean) {
		Session session = factory.getCurrentSession();
		RtPhotoBean rpb = session.get(RtPhotoBean.class, bean.getPoId());
		session.save(rpb);
		return rpb;
	}

	@Override
	public RtPhotoBean insertRtPhoto(RtPhotoBean bean) {
		Session session = factory.getCurrentSession();
		session.save(bean);
		return bean;
	}

	@Override
	public boolean deleteRtPhotopoId(Integer poId) {
		Session session = factory.getCurrentSession();
		RtPhotoBean rpi = session.get(RtPhotoBean.class, poId);
		if (rpi != null) {
			session.delete(rpi);
			return true;
		}
		return false;
	}



}
