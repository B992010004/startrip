package com.startrip.restaurant.rtService;

import com.startrip.restaurant.rtModel.RtDetailsBean;

public interface RtDetailsService {

	RtDetailsBean getAllRtDetailsrtName(String rtName);
	
	RtDetailsBean getAllRtDetailsrtId(Integer rtId);

	RtDetailsBean updateRtDetails(RtDetailsBean bean);

	RtDetailsBean insertRtDetails(RtDetailsBean bean);
	
	boolean deleteRtDetailsrtId(Integer rtId);
	
}
