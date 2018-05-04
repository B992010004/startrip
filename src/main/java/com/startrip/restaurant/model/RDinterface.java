package com.startrip.restaurant.model;

public interface RDinterface {

	RtDetailsBean select(String rtName);
	
	RtDetailsBean select(Integer rtId);

	RtDetailsBean update(RtDetailsBean bean);

	RtDetailsBean insert(RtDetailsBean bean);

	boolean delete(String rtName);
	
	boolean delete(Integer rtId);
}

