package com.startrip.restaurant.rtService;

import com.startrip.restaurant.rtmodel.RtPhotoBean;

public interface RtPhotoService {

	RtPhotoBean getAllRtPhotortId(Integer rtId);

	RtPhotoBean updateRtPhoto(RtPhotoBean bean);

	RtPhotoBean insertRtPhoto(RtPhotoBean bean);

	boolean deleteRtPhotopoId(Integer poId);
	
}
