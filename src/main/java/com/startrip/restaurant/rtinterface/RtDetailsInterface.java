package com.startrip.restaurant.rtinterface;

import com.startrip.restaurant.rtmodel.RtDetailsBean;

public interface RtDetailsInterface {

	RtDetailsBean select(String rtName);
	
	RtDetailsBean select(Integer rtId);

	RtDetailsBean update(RtDetailsBean bean);

	RtDetailsBean insert(RtDetailsBean bean);

	boolean delete(String rtName);
	
	boolean delete(Integer rtId);
}

