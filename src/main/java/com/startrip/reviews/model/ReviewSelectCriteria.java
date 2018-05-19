package com.startrip.reviews.model;

public class ReviewSelectCriteria {

	private Integer pK;
	private String family;
	private String couple;
	private String alone;
	private String business;
	private String friends;

	public String getFamily() {
		return family;
	}

	public void setFamily(String family) {
		this.family = family;
	}

	public String getCouple() {
		return couple;
	}

	public void setCouple(String couple) {
		this.couple = couple;
	}

	public String getAlone() {
		return alone;
	}

	public void setAlone(String alone) {
		this.alone = alone;
	}

	public String getBusiness() {
		return business;
	}

	public void setBusiness(String business) {
		this.business = business;
	}

	public String getFriends() {
		return friends;
	}

	public void setFriends(String friends) {
		this.friends = friends;
	}

	public Integer getpK() {
		return pK;
	}

	public void setpK(Integer pK) {
		this.pK = pK;
	}

	@Override
	public String toString() {
		return "ReviewSelectCriteria [pK=" + pK + ", family=" + family + ", couple=" + couple + ", alone=" + alone
				+ ", business=" + business + ", friends=" + friends + "]";
	}

}
