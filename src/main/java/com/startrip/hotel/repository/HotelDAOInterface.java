package com.startrip.hotel.repository;

import java.util.List;

import com.startrip.hotel.model.HotelsBean;
import com.startrip.hotel.model.SearchHotel;

public interface HotelDAOInterface {

	int insert(HotelsBean bean);

	HotelsBean selectByPk(Integer hotelid);

	void update(HotelsBean bean);

	List<HotelsBean> selectByMemberid(Integer memberid);

	List<HotelsBean> selectByCriteria(SearchHotel searchHotel);
	
	List<HotelsBean> selectPage(Integer firstResult, Integer maxResults, SearchHotel searchHotel);
	
	List<Integer> count();

}