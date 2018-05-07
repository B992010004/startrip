package com.startrip.restaurant.rtRepository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.restaurant.rtexception.RtDetailsNotFoundException;
import com.startrip.restaurant.rtmodel.RtDetailsBean;

@Repository
public class RtDetailsRepositoryImp implements RtDetailsRepository {
	
	@Autowired
	SessionFactory factory;

	@Override
	public RtDetailsBean getAllRtDetailsrtName(String rtName) {
		RtDetailsBean rdn = null;
		Session session = factory.getCurrentSession();
		rdn = session.get(RtDetailsBean.class, rtName);
		if(rdn == null) throw new RtDetailsNotFoundException(rtName);
		return rdn;
	}

	@Override
	public RtDetailsBean getAllRtDetailsrtId(Integer rtId) {
		RtDetailsBean rdi = null;
		Session session = factory.getCurrentSession();
		rdi = session.get(RtDetailsBean.class, rtId);
		if(rdi == null) throw new RtDetailsNotFoundException(rtId);
		return rdi;		
	}

	@Override
	public RtDetailsBean updateRtDetails(RtDetailsBean bean) {
		Session session = factory.getCurrentSession();
		RtDetailsBean rdb = session.get(RtDetailsBean.class, bean.getRtId());
		session.save(rdb);
		return rdb;
	}

	@Override
	public RtDetailsBean insertRtDetails(RtDetailsBean bean) {
		Session session = factory.getCurrentSession();
		session.save(bean);
		return bean;
	}

	@Override
	public boolean deleteRtDetailsrtId(Integer rtId) {
		Session session = factory.getCurrentSession();
		RtDetailsBean rdi = session.get(RtDetailsBean.class, rtId);
		if (rdi != null) {
			session.delete(rdi);
			return true;
		}
		return false;
	}



}
