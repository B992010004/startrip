package com.startrip.restaurant.rtService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.restaurant.rtRepository.RtDetailsRepository;
import com.startrip.restaurant.rtmodel.RtDetailsBean;

@Service
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

}
