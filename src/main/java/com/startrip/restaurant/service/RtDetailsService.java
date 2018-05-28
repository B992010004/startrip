package com.startrip.restaurant.service;

import java.util.List;

import com.startrip.hotel.model.HotelsBean;
import com.startrip.hotel.model.SearchHotel;
import com.startrip.restaurant.model.RtDetailsBean;

public interface RtDetailsService {
	
	List<RtDetailsBean> getAllall();

	List<RtDetailsBean> getAll();
	
	List<RtDetailsBean> getAllOne();

	List<RtDetailsBean> getrtArea();

	List<RtDetailsBean> getrtPricepountH();

	List<RtDetailsBean> getrtPricepountM();

	List<RtDetailsBean> getrtPricepountL();

	RtDetailsBean getAllRtDetailsrtName(String rtName);

	RtDetailsBean getAllRtDetailsrtId(Integer rtId);

	RtDetailsBean updateRtDetails(RtDetailsBean bean);

	RtDetailsBean insertRtDetails(RtDetailsBean bean);

	boolean deleteRtDetailsrtId(Integer rtId);

}
