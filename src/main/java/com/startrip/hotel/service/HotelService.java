package com.startrip.hotel.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.hotel.model.HotelsBean;
import com.startrip.hotel.model.SearchHotel;
import com.startrip.hotel.repository.HotelDAOInterface;

@Service
@Transactional
public class HotelService implements HotelServiceInterface {

	@Autowired
	HotelDAOInterface hotelDAOInterface;

	@Override
	public int insert(HotelsBean bean) {
		return hotelDAOInterface.insert(bean);
	}

	@Override
	public HotelsBean selectByPk(Integer hotelid) {
		return hotelDAOInterface.selectByPk(hotelid);
	}

	@Override
	public void update(HotelsBean bean) {
		hotelDAOInterface.update(bean);
	}

	@Override
	public List<HotelsBean> selectByMemberid(Integer memberid) {
		return hotelDAOInterface.selectByMemberid(memberid);
	}

	@Override
	public List<HotelsBean> selectByCriteria(SearchHotel searchHotel) {
		return hotelDAOInterface.selectByCriteria(searchHotel);
	}
}
