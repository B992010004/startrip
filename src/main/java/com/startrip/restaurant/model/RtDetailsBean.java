package com.startrip.restaurant.model;

import java.io.Serializable;
import java.sql.Blob;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "RtDetails")
public class RtDetailsBean implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer rtId;
	String rtName;
	String rtCuisine;
	String rtAddress;
	String rtPhone;
	String rtUrl;
	String rtEmail;
	String rtPricepoint;
	String rtBusinesshours;
	Blob rtPhoto;
	
	
	
	public RtDetailsBean(Integer rtId, String rtName, String rtCuisine, String rtAddress, String rtPhone, String rtUrl,
			String rtEmail, String rtPricepoint, String rtBusinesshours, Blob rtPhoto) {
		super();
		this.rtId = rtId;
		this.rtName = rtName;
		this.rtCuisine = rtCuisine;
		this.rtAddress = rtAddress;
		this.rtPhone = rtPhone;
		this.rtUrl = rtUrl;
		this.rtEmail = rtEmail;
		this.rtPricepoint = rtPricepoint;
		this.rtBusinesshours = rtBusinesshours;
		this.rtPhoto = rtPhoto;
	}

	public RtDetailsBean() {
		super();
	}

	@Override
	public String toString() {
		return "RtDetailsBean [rtId=" + rtId + ", rtName=" + rtName + ", rtCuisine=" + rtCuisine + ", rtAddress="
				+ rtAddress + ", rtPhone=" + rtPhone + ", rtUrl=" + rtUrl + ", rtEmail=" + rtEmail + ", rtPricepoint="
				+ rtPricepoint + ", rtBusinesshours=" + rtBusinesshours + ", rtPhoto=" + rtPhoto + "]";
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

	public String getRtAddress() {
		return rtAddress;
	}

	public void setRtAddress(String rtAddress) {
		this.rtAddress = rtAddress;
	}

	public String getRtPhone() {
		return rtPhone;
	}

	public void setRtPhone(String rtPhone) {
		this.rtPhone = rtPhone;
	}

	public String getRtUrl() {
		return rtUrl;
	}

	public void setRtUrl(String rtUrl) {
		this.rtUrl = rtUrl;
	}

	public String getRtEmail() {
		return rtEmail;
	}

	public void setRtEmail(String rtEmail) {
		this.rtEmail = rtEmail;
	}

	public String getRtPricepoint() {
		return rtPricepoint;
	}

	public void setRtPricepoint(String rtPricepoint) {
		this.rtPricepoint = rtPricepoint;
	}

	public String getRtBusinesshours() {
		return rtBusinesshours;
	}

	public void setRtBusinesshours(String rtBusinesshours) {
		this.rtBusinesshours = rtBusinesshours;
	}

	public Blob getRtPhoto() {
		return rtPhoto;
	}

	public void setRtPhoto(Blob rtPhoto) {
		this.rtPhoto = rtPhoto;
	}
	
	

}
