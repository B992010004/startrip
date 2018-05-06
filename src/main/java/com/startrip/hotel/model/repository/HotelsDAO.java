package com.startrip.hotel.model.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.persistent.HotelsBean;

@Repository
public class HotelsDAO{
	@Autowired
	SessionFactory factory;
	
	public int insert(HotelsBean bean) {
		Session session = factory.getCurrentSession();
		int pk = (Integer) session.save(bean);
		System.out.println("新增飯店基本資料結束");
		return pk;
	}
	public void update(HotelsBean bean) {
		Session session = factory.getCurrentSession();
		
		session.update(bean);
		System.out.println("修改飯店資料結束");
		
	}
	public HotelsBean selectByPk(Integer hotelid) {
		Session session = factory.getCurrentSession();
		HotelsBean bean = session.get(HotelsBean.class, hotelid);
		return bean;
	}

}
