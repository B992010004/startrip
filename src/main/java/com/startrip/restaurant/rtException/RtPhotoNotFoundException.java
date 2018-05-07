package com.startrip.restaurant.rtException;

public class RtPhotoNotFoundException extends RuntimeException {

	public RtPhotoNotFoundException() {
		super();
	}

	public RtPhotoNotFoundException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public RtPhotoNotFoundException(String message, Throwable cause) {
		super(message, cause);
	}

	public RtPhotoNotFoundException(String message) {
		super(message);
	}

	public RtPhotoNotFoundException(Throwable cause) {
		super(cause);
	}

	
	
}
