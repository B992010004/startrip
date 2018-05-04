package com.startrip.restaurant.rtinterface;

import com.startrip.restaurant.rtmodel.RtPhotoBean;

public interface RtPhotoInterface {

	RtPhotoBean select(Integer rtId);

	RtPhotoBean update(RtPhotoBean bean);

	RtPhotoBean insert(RtPhotoBean bean);

	boolean delete(Integer poId);
	
}

