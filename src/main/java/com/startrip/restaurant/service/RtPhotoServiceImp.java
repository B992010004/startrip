package com.startrip.restaurant.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.restaurant.model.RtPhotoBean;
import com.startrip.restaurant.repository.RtPhotoRepository;

@Service
public class RtPhotoServiceImp implements RtPhotoService {
	
	@Autowired
	private RtPhotoRepository RtPhotoRepositoryImp;

	@Override
	public RtPhotoBean getAllRtPhotortId(Integer rtId) {
		return RtPhotoRepositoryImp.getAllRtPhotortId(rtId);
	}

	@Override
	public RtPhotoBean updateRtPhoto(RtPhotoBean bean) {
		return RtPhotoRepositoryImp.updateRtPhoto(bean);
	}

	@Override
	public RtPhotoBean insertRtPhoto(RtPhotoBean bean) {
		return RtPhotoRepositoryImp.insertRtPhoto(bean);
	}

	@Override
	public boolean deleteRtPhotopoId(Integer poId) {
		return RtPhotoRepositoryImp.deleteRtPhotopoId(poId);
	}

}
