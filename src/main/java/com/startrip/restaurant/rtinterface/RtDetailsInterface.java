package com.startrip.restaurant.rtinterface;

import com.startrip.restaurant.rtmodel.RtDetailsBean;

public interface RtDetailsInterface {

	RtDetailsBean getAllRtDetailsrtName(String rtName);
	
	RtDetailsBean getAllRtDetailsrtId(Integer rtId);

	RtDetailsBean updateRtDetails(RtDetailsBean bean);

	RtDetailsBean insertRtDetails(RtDetailsBean bean);
	
	boolean deleteRtDetailsrtId(Integer rtId);
}

