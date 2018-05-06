package com.startrip.restaurant.rtmodel;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="RtDetails")
public class RtDetailsBean {

	private Integer rtId;
	private String rtName;
	private String rtCuisine;
	private String rtPhone;
	private String rtAddress;
	private String rtCounty;
	private String rtArea;
	private String rtUrl;
	private String rtPricepount;
	private String rtBusinesshours;
	private String rtEmail;
	private String teCategory;
	
	@Override
	public String toString() {
		return "RtDetailsBean [rtId=" + rtId + ", rtName=" + rtName + ", rtCuisine=" + rtCuisine + ", rtPhone="
				+ rtPhone + ", rtAddress=" + rtAddress + ", rtCounty=" + rtCounty + ", rtArea=" + rtArea + ", rtUrl="
				+ rtUrl + ", rtPricepount=" + rtPricepount + ", rtBusinesshours=" + rtBusinesshours + ", rtEmail="
				+ rtEmail + ", teCategory=" + teCategory + "]";
	}

	public RtDetailsBean(Integer rtId, String rtName, String rtCuisine, String rtPhone, String rtAddress,
			String rtCounty, String rtArea, String rtUrl, String rtPricepount, String rtBusinesshours, String rtEmail,
			String teCategory) {
		super();
		this.rtId = rtId;
		this.rtName = rtName;
		this.rtCuisine = rtCuisine;
		this.rtPhone = rtPhone;
		this.rtAddress = rtAddress;
		this.rtCounty = rtCounty;
		this.rtArea = rtArea;
		this.rtUrl = rtUrl;
		this.rtPricepount = rtPricepount;
		this.rtBusinesshours = rtBusinesshours;
		this.rtEmail = rtEmail;
		this.teCategory = teCategory;
	}

	public RtDetailsBean() {
		super();
	}

	public Integer getRtId() {
		return rtId;
	}

	public void setRtId(Integer rtId) {
		this.rtId = rtId;
	}

	public String getRtName() {
		return rtName;
	}

	public void setRtName(String rtName) {
		this.rtName = rtName;
	}

	public String getRtCuisine() {
		return rtCuisine;
	}

	public void setRtCuisine(String rtCuisine) {
		this.rtCuisine = rtCuisine;
	}

	public String getRtPhone() {
		return rtPhone;
	}

	public void setRtPhone(String rtPhone) {
		this.rtPhone = rtPhone;
	}

	public String getRtAddress() {
		return rtAddress;
	}

	public void setRtAddress(String rtAddress) {
		this.rtAddress = rtAddress;
	}

	public String getRtCounty() {
		return rtCounty;
	}

	public void setRtCounty(String rtCounty) {
		this.rtCounty = rtCounty;
	}

	public String getRtArea() {
		return rtArea;
	}

	public void setRtArea(String rtArea) {
		this.rtArea = rtArea;
	}

	public String getRtUrl() {
		return rtUrl;
	}

	public void setRtUrl(String rtUrl) {
		this.rtUrl = rtUrl;
	}

	public String getRtPricepount() {
		return rtPricepount;
	}

	public void setRtPricepount(String rtPricepount) {
		this.rtPricepount = rtPricepount;
	}

	public String getRtBusinesshours() {
		return rtBusinesshours;
	}

	public void setRtBusinesshours(String rtBusinesshours) {
		this.rtBusinesshours = rtBusinesshours;
	}

	public String getRtEmail() {
		return rtEmail;
	}

	public void setRtEmail(String rtEmail) {
		this.rtEmail = rtEmail;
	}

	public String getTeCategory() {
		return teCategory;
	}

	public void setTeCategory(String teCategory) {
		this.teCategory = teCategory;
	}
	

	
}

