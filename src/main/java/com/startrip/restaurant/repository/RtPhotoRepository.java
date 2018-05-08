package com.startrip.restaurant.repository;

import com.startrip.restaurant.rtmodel.RtPhotoBean;

public interface RtPhotoRepository {

	RtPhotoBean getAllRtPhotortId(Integer rtId);

	RtPhotoBean updateRtPhoto(RtPhotoBean bean);

	RtPhotoBean insertRtPhoto(RtPhotoBean bean);

	boolean deleteRtPhotopoId(Integer poId);
	
}
