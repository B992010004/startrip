package com.startrip.restaurant.rtDAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.restaurant.rtinterface.RtPhotoInterface;
import com.startrip.restaurant.rtmodel.RtPhotoBean;

@Repository
public class RtPhotoRepository implements RtPhotoInterface {
	
	@Autowired
	SessionFactory factory;

	@Override
	public RtPhotoBean getAllRtPhotortId(Integer rtId) {

		return null;
	}

	@Override
	public RtPhotoBean updateRtPhoto(RtPhotoBean bean) {
		return null;
	}

	@Override
	public RtPhotoBean insertRtPhoto(RtPhotoBean bean) {
		return null;
	}

	@Override
	public boolean deleteRtPhotopoId(Integer poId) {
		return false;
	}



}
