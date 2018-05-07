package com.startrip.restaurant.rtexception;

public class RtBookingNotFoundException extends RuntimeException {

	public RtBookingNotFoundException() {
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

	
	
}
