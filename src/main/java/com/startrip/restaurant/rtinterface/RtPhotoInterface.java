package com.startrip.restaurant.rtInterface;

import com.startrip.restaurant.rtModel.RtPhotoBean;

public interface RtPhotoInterface {

	RtPhotoBean getAllRtPhotortId(Integer rtId);

	RtPhotoBean updateRtPhoto(RtPhotoBean bean);

	RtPhotoBean insertRtPhoto(RtPhotoBean bean);

	boolean deleteRtPhotopoId(Integer poId);
	
}
