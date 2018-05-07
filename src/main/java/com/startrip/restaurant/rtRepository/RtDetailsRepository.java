package com.startrip.restaurant.rtRepository;

import com.startrip.restaurant.rtModel.RtDetailsBean;

public interface RtDetailsRepository {

	RtDetailsBean getAllRtDetailsrtName(String rtName);
	
	RtDetailsBean getAllRtDetailsrtId(Integer rtId);

	RtDetailsBean updateRtDetails(RtDetailsBean bean);

	RtDetailsBean insertRtDetails(RtDetailsBean bean);
	
	boolean deleteRtDetailsrtId(Integer rtId);
}

