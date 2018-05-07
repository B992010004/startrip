package com.startrip.restaurant.rtInterface;

import com.startrip.restaurant.rtModel.RtDetailsBean;

public interface RtDetailsInterface {

	RtDetailsBean getAllRtDetailsrtName(String rtName);
	
	RtDetailsBean getAllRtDetailsrtId(Integer rtId);

	RtDetailsBean updateRtDetails(RtDetailsBean bean);

	RtDetailsBean insertRtDetails(RtDetailsBean bean);
	
	boolean deleteRtDetailsrtId(Integer rtId);
}
