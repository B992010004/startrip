package com.startrip.restaurant.exception;

public class RtReviewsNotFoundException extends RuntimeException {

	public RtReviewsNotFoundException(Integer rwId) {
		super();
	}

	public RtReviewsNotFoundException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public RtReviewsNotFoundException(String message, Throwable cause) {
		super(message, cause);
	}

	public RtReviewsNotFoundException(String message) {
		super(message);
	}

	public RtReviewsNotFoundException(Throwable cause) {
		super(cause);
	}

	public RtReviewsNotFoundException() {
		super();
	}

	
	
}