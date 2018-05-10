package com.startrip.transport.SeatList.Service;

import java.sql.Blob;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.startrip.transport.SeatList.SeatListInterface.SeatListRepositoryInterface;
import com.startrip.transport.SeatList.SeatListModle.SeatListBean;


public class SeatListService implements SeatListServiceInteface{

	

		@Autowired
		private SeatListRepositoryInterface SeatListDAO;
		
		@Transactional
		@Override
		public List<SeatListBean> select() {
			return SeatListDAO.select();
		}
		
		@Transactional
		@Override
		public void update(Integer Trip, Integer SeatNumber,Integer Seat,Integer OrderNumber) {
			
			SeatListDAO.update(Trip,SeatNumber,Seat,OrderNumber);
		}
		
		
		@Transactional
		@Override
		public void insert(SeatListBean bean) {

			SeatListDAO.insert(bean);

		}
		
		@Transactional
		@Override
		public boolean delete(Integer id) {
			return SeatListDAO.delete(id);
	
	
	
		}
}