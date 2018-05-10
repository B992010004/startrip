package com.startrip.reviews.model;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table
public class ReviewBean implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer no;
	private Integer articleId;
	private Integer hotelId;
	private Integer memberId;
	private String lastname;
	private Timestamp updateTime;
	private String title;
	private String content;

	// tripType寫死好了
	private String tripType;
	private Date stayed;
	private Integer overallRank;
	private Integer serviceRating;
	private Integer valueRating;
	private Integer roomsRating;
	private String roomTips;
	private Integer thumbCount;
	private String photoPaths;
	private String videoPath;
	private String filePath;

	// 接收相片上傳
	@Transient
	private MultipartFile[] multipartFiles;

	public MultipartFile[] getMultipartFiles() {
		return multipartFiles;
	}

	public void setMultipartFiles(MultipartFile[] multipartFiles) {
		this.multipartFiles = multipartFiles;
	}

	// 讀取相片
	@Transient
	private String[] photoPathList;
	//我居然在Bean裡面寫程式了 我有點無法原諒自己
	public String[] getPhotoPathList() {
		String[] photoPathList = getPhotoPaths().split(";");
		return photoPathList;
	}


	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public Integer getArticleId() {
		return articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

	public Integer getHotelId() {
		return hotelId;
	}

	public void setHotelId(Integer hotelId) {
		this.hotelId = hotelId;
	}

	public Integer getMemberId() {
		return memberId;
	}

	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public Timestamp getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTripType() {
		return tripType;
	}

	public void setTripType(String tripType) {
		this.tripType = tripType;
	}

	public Date getStayed() {
		return stayed;
	}

	public void setStayed(Date stayed) {
		this.stayed = stayed;
	}

	public Integer getOverallRank() {
		return overallRank;
	}

	public void setOverallRank(Integer overallRank) {
		this.overallRank = overallRank;
	}

	public Integer getServiceRating() {
		return serviceRating;
	}

	public void setServiceRating(Integer serviceRating) {
		this.serviceRating = serviceRating;
	}

	public Integer getValueRating() {
		return valueRating;
	}

	public void setValueRating(Integer valueRating) {
		this.valueRating = valueRating;
	}

	public Integer getRoomsRating() {
		return roomsRating;
	}

	public void setRoomsRating(Integer roomsRating) {
		this.roomsRating = roomsRating;
	}

	public String getRoomTips() {
		return roomTips;
	}

	public void setRoomTips(String roomTips) {
		this.roomTips = roomTips;
	}

	public Integer getThumbCount() {
		return thumbCount;
	}

	public void setThumbCount(Integer thumbCount) {
		this.thumbCount = thumbCount;
	}

	public String getPhotoPaths() {
		return photoPaths;
	}

	public void setPhotoPaths(String photoPath) {
		this.photoPaths = photoPath;
	}

	public String getVideoPath() {
		return videoPath;
	}

	public void setVideoPath(String videoPath) {
		this.videoPath = videoPath;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	@Override
	public String toString() {
		return "Review [no=" + no + ", articleId=" + articleId + ", hotelId=" + hotelId + ", memberId=" + memberId
				+ ", lastname=" + lastname + ", updateTime=" + updateTime + ", title=" + title + ", content=" + content
				+ ", tripType=" + tripType + ", stayed=" + stayed + ", overallRank=" + overallRank + ", serviceRating="
				+ serviceRating + ", valueRating=" + valueRating + ", roomsRating=" + roomsRating + ", roomTips="
				+ roomTips + ", thumbCount=" + thumbCount + ", photoPath=" + photoPaths + ", videoPath=" + videoPath
				+ ", filePath=" + filePath + "]";
	}

}
