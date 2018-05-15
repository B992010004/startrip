package com.startrip.restaurant.exception;

import com.startrip.member.memberModle.MemberBean;

public class RtBookingNotFoundException extends RuntimeException {

	public RtBookingNotFoundException(MemberBean memberBean) {
		super();
	}

	public RtBookingNotFoundException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public RtBookingNotFoundException(String message, Throwable cause) {
		super(message, cause);

	}

	public RtBookingNotFoundException(String message) {
		super(message);
	}

	public RtBookingNotFoundException(Throwable cause) {
		super(cause);
	}

	public RtBookingNotFoundException() {
		super();
	}

	
	
}
