package com.startrip.restaurant.rtinterface;

import com.startrip.restaurant.rtmodel.RtPhotoBean;

public interface RtPhotoInterface {

	RtPhotoBean getAllRtPhotortId(Integer rtId);

	RtPhotoBean updateRtPhoto(RtPhotoBean bean);

	RtPhotoBean insertRtPhoto(RtPhotoBean bean);

	boolean deleteRtPhotopoId(Integer poId);
	
}
