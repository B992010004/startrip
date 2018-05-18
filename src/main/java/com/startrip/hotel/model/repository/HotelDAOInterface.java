package com.startrip.hotel.model.repository;

import java.util.List;

import com.startrip.hotel.model.SearchHotel;
import com.startrip.hotel.model.persistent.HotelsBean;

public interface HotelDAOInterface {

	int insert(HotelsBean bean);

	HotelsBean selectByPk(Integer hotelid);

	void update(HotelsBean bean);

	List<HotelsBean> selectByMemberid(Integer memberid);

	List<HotelsBean> selectByCriteria(SearchHotel searchHotel);

}