package com.startrip.restaurant.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="RtDetails")
public class RtDetailsBean {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
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
	private String photoPaths;
	
	@Transient
	private String photoArr[];
	
	
	public String[] getPhotoArr() {
		return photoArr;
	}

	public void setPhotoArr(String[] photoArr) {
		this.photoArr = photoArr;
	}

	@Transient
	private MultipartFile[] multipartFiles;
	@OneToMany
	private List<RtBookingBean> rtBookingBean;
	

	public RtDetailsBean(Integer rtId, String rtName, String rtCuisine, String rtPhone, String rtAddress,
			String rtCounty, String rtArea, String rtUrl, String rtPricepount, String rtBusinesshours, String rtEmail,
			String teCategory, String photoPaths, List<RtBookingBean> rtBookingBean) {
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
		this.photoPaths = photoPaths;
		this.rtBookingBean = rtBookingBean;
	}

	public RtDetailsBean() {
		super();
	}

	@Override
	public String toString() {
		return "RtDetailsBean [rtId=" + rtId + ", rtName=" + rtName + ", rtCuisine=" + rtCuisine + ", rtPhone="
				+ rtPhone + ", rtAddress=" + rtAddress + ", rtCounty=" + rtCounty + ", rtArea=" + rtArea + ", rtUrl="
				+ rtUrl + ", rtPricepount=" + rtPricepount + ", rtBusinesshours=" + rtBusinesshours + ", rtEmail="
				+ rtEmail + ", teCategory=" + teCategory + ", photoPaths=" + photoPaths + ", rtBookingBean="
				+ rtBookingBean + "]";
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

	public String getPhotoPaths() {
		return photoPaths;
	}

	public void setPhotoPaths(String photoPaths) {
		this.photoPaths = photoPaths;
	}

	public List<RtBookingBean> getRtBookingBean() {
		return rtBookingBean;
	}

	public void setRtBookingBean(List<RtBookingBean> rtBookingBean) {
		this.rtBookingBean = rtBookingBean;
	}

	// 接收相片上傳
	

	public MultipartFile[] getMultipartFiles() {
		return multipartFiles;
	}

	public void setMultipartFiles(MultipartFile[] multipartFiles) {
		this.multipartFiles = multipartFiles;
	}

	// 讀取相片
	@Transient
	private String[] photoPathList;

	// 我居然在Bean裡面寫程式了 我有點無法原諒自己
	public String[] getPhotoPathList() {
		if (getPhotoPaths() != null) {
			return photoPathList = getPhotoPaths().split(";");
		}
		return photoPathList;
	}
}

