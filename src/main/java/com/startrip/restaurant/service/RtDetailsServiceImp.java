package com.startrip.restaurant.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.restaurant.model.RtDetailsBean;
import com.startrip.restaurant.repository.RtDetailsRepository;

@Service
@Transactional
public class RtDetailsServiceImp implements RtDetailsService {
	
	@Autowired
	private RtDetailsRepository RtDetailsRepositoryImp;

	@Override
	public RtDetailsBean getAllRtDetailsrtName(String rtName) {
		return RtDetailsRepositoryImp.getAllRtDetailsrtName(rtName);
	}

	@Override
	public RtDetailsBean getAllRtDetailsrtId(Integer rtId) {
		return RtDetailsRepositoryImp.getAllRtDetailsrtId(rtId);
	}

	@Override
	public RtDetailsBean updateRtDetails(RtDetailsBean bean) {
		return RtDetailsRepositoryImp.updateRtDetails(bean);
	}

	@Override
	public RtDetailsBean insertRtDetails(RtDetailsBean bean) {
		return RtDetailsRepositoryImp.insertRtDetails(bean);
	}

	@Override
	public boolean deleteRtDetailsrtId(Integer rtId) {
		return RtDetailsRepositoryImp.deleteRtDetailsrtId(rtId);
	}

	@Override
	public List<RtDetailsBean> getAll() {
		return RtDetailsRepositoryImp.getAll();
	}

	@Override
	public List<RtDetailsBean> getrtArea() {
		return RtDetailsRepositoryImp.getrtArea();
	}

	@Override
	public List<RtDetailsBean> getrtPricepountH() {
		return RtDetailsRepositoryImp.getrtPricepountH();
	}

	@Override
	public List<RtDetailsBean> getrtPricepountM() {
		return RtDetailsRepositoryImp.getrtPricepountM();
	}

	@Override
	public List<RtDetailsBean> getrtPricepountL() {
		return RtDetailsRepositoryImp.getrtPricepountL();
	}

	@Override
	public List<RtDetailsBean> getAllOne() {
		return RtDetailsRepositoryImp.getAllOne();
	}

	@Override
	public List<RtDetailsBean> getAllall() {
		return RtDetailsRepositoryImp.getAllall();
	}

}
