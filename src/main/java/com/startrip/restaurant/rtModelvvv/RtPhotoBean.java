package com.startrip.restaurant.rtModelvvv;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="RtPhoto")
public class RtPhotoBean {

	@Id
	private Integer poId;
	private Integer rtId;
	private String rtImage;
	
	@Override
	public String toString() {
		return "RtPhotoBean [poId=" + poId + ", rtId=" + rtId + ", rtImage=" + rtImage + "]";
	}

	public RtPhotoBean(Integer poId, Integer rtId, String rtImage) {
		super();
		this.poId = poId;
		this.rtId = rtId;
		this.rtImage = rtImage;
	}

	public RtPhotoBean() {
		super();
	}

	public Integer getPoId() {
		return poId;
	}

	public void setPoId(Integer poId) {
		this.poId = poId;
	}

	public Integer getRtId() {
		return rtId;
	}

	public void setRtId(Integer rtId) {
		this.rtId = rtId;
	}

	public String getRtImage() {
		return rtImage;
	}

	public void setRtImage(String rtImage) {
		this.rtImage = rtImage;
	}
	
	

}

