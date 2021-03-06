package com.startrip.restaurant.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.restaurant.model.RtReviewsBean;
import com.startrip.restaurant.repository.RtReviewsRepository;

@Service
@Transactional
public class RtReviewsServiceImp implements RtReviewsService {
	
	@Autowired
	private RtReviewsRepository RtReviewsRepositoryImp;

	@Override
	public RtReviewsBean getAllRtReviewsrwId(Integer rwId) {
		return RtReviewsRepositoryImp.getAllRtReviewsrwId(rwId);
	}

	@Override
	public RtReviewsBean getAllRtReviewsrtTitle(String rtTitle) {
		return RtReviewsRepositoryImp.getAllRtReviewsrtTitle(rtTitle);
	}

	@Override
	public RtReviewsBean updateRtReviews(RtReviewsBean bean) {
		return RtReviewsRepositoryImp.updateRtReviews(bean);
	}

	@Override
	public RtReviewsBean insertRtReviews(RtReviewsBean bean) {
		return RtReviewsRepositoryImp.insertRtReviews(bean);
	}

	@Override
	public boolean deleteRtReviewsrwId(Integer rwId) {
		return RtReviewsRepositoryImp.deleteRtReviewsrwId(rwId);
	}

}
