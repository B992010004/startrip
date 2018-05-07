package com.startrip.restaurant.rtExceptionvvv;

public class RtDetailsNotFoundException extends RuntimeException {

	public RtDetailsNotFoundException(Integer rtId) {
		super();
	}

	public RtDetailsNotFoundException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public RtDetailsNotFoundException(String message, Throwable cause) {
		super(message, cause);
	}

	public RtDetailsNotFoundException(String message) {
		super(message);
	}

	public RtDetailsNotFoundException(Throwable cause) {
		super(cause);
	}

	public RtDetailsNotFoundException() {
		super();
	}

	
	
}
