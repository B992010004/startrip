package com.startrip.hotel.service;

import java.util.List;

import com.startrip.hotel.model.HotelsBean;
import com.startrip.hotel.model.SearchHotel;

public interface HotelServiceInterface {
	int insert(HotelsBean bean);

	HotelsBean selectByPk(Integer hotelid);

	void update(HotelsBean bean);

	List<HotelsBean> selectByMemberid(Integer memberid);

	List<HotelsBean> selectByCriteria(SearchHotel searchHotel);

	List<HotelsBean> selectPage(Integer firstResult, Integer maxResults, SearchHotel searchHotel);

	List<Integer> count();
}