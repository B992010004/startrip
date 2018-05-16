package com.startrip.travelPlan.exception;

public class ViewNotFoundException extends RuntimeException {

	private  String viewId;

	public ViewNotFoundException(String viewId) {
		super();
		this.viewId = viewId;
	}

	public String getViewId() {
		return viewId;
	}

	public void setViewId(String viewId) {
		this.viewId = viewId;
	}
	
	

}
