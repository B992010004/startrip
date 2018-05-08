package com.startrip.restaurant.rtService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.restaurant.rtModel.RtPhotoBean;
import com.startrip.restaurant.rtRepository.RtPhotoRepository;

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
