package com.startrip.restaurant.rtDAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.startrip.restaurant.rtinterface.RtDetailsInterface;
import com.startrip.restaurant.rtmodel.RtDetailsBean;
import com.starttrip.restaurant.rtexception.RtDetailsNotFoundException;


public class RtDetailsRepository implements RtDetailsInterface {
	
	@Autowired
	SessionFactory factory;

	@Override
	public RtDetailsBean getAllRtDetailsrtName(String rtName) {
		RtDetailsBean rd = null;
		Session session = factory.getCurrentSession();
		rd = session.get(RtDetailsBean.class, rtName);
		if(rd == null) throw new RtDetailsNotFoundException(rtName);
		return rd;
	}

	@Override
	public RtDetailsBean getAllRtDetailsrtId(Integer rtId) {
		return null;
	}

	@Override
	public RtDetailsBean updateRtDetails(RtDetailsBean bean) {
		return null;
	}

	@Override
	public RtDetailsBean insertRtDetails(RtDetailsBean bean) {
		return null;
	}

	@Override
	public boolean deleteRtDetailsrtName(String rtName) {
		return false;
	}

	@Override
	public boolean deleteRtDetailsrtId(Integer rtId) {
		return false;
	}



}
