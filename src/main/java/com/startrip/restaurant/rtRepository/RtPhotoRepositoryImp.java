package com.startrip.restaurant.rtRepository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.restaurant.rtexception.RtReviewsNotFoundException;
import com.startrip.restaurant.rtmodel.RtPhotoBean;

@Repository
public class RtPhotoRepositoryImp implements RtPhotoRepository {
	
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
