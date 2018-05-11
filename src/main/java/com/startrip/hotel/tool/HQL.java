package com.startrip.hotel.tool;

public enum HQL {
	SELECT_HOTELS_BY_MEMBERID,
	SELECT_ROOMTYPE_BY_HOTELID,
	DELETE_FACILITY_BY_HOTELID,
	SELECT_FACILITY_BY_HOTELID,
	DELETE_SERVICE_BY_HOTELID,
	SELECT_SERVICE_BY_HOTELID,
	SELECT_FACILITYNAME,
	SELECT_SERVICENAME,
	SELECT_PHOTONAME,
	SELECT_PHOTO_BY_HOTELID,
	SELECT_PHOTOID_FOR_OTHER,
	SELECT_MAINPHOTO,
	COUNT_PHOTO_BY_HOTELID;

	private String HQL;

	public String execute() {
		switch (this) {
		case SELECT_MAINPHOTO:
			HQL = "FROM mainphoto WHERE hotelid = :hotelid";
			break;
		case SELECT_HOTELS_BY_MEMBERID:
			HQL = "FROM hotels WHERE hotelmanagerid = :memberid ORDER BY hotelid DESC";
			break;
		case SELECT_ROOMTYPE_BY_HOTELID:
			HQL = "FROM roomtype WHERE hotelid = :hotelid ORDER BY roomid DESC";
			break;
		case SELECT_PHOTOID_FOR_OTHER:
			HQL = "SELECT photonameid FROM photoname WHERE photoname = :photoname";
			break;
		case SELECT_PHOTO_BY_HOTELID:
			HQL = "FROM photo WHERE hotelid = :hotelid ORDER BY photosorting ASC";
			break;
		case COUNT_PHOTO_BY_HOTELID:
			HQL = "SELECT COUNT(photoid) FROM photo WHERE hotelid = :hotelid AND photosorting IS NOT NULL";
			break;
		case DELETE_FACILITY_BY_HOTELID:
			HQL = "DELETE facilitylist WHERE hotelid = :hotelid";
			// 更新前刪除已存在的設施
			break;
		case SELECT_FACILITY_BY_HOTELID:
			HQL = "SELECT facilityid FROM facilitylist WHERE hotelid = :hotelid";
			// 搜尋此飯店有的設施
			break;
		case DELETE_SERVICE_BY_HOTELID:
			HQL = "DELETE servicelist WHERE hotelid = :hotelid";
			// 更新前刪除已存在的服務
			break;
		case SELECT_SERVICE_BY_HOTELID:
			HQL = "SELECT serviceid FROM servicelist WHERE hotelid = :hotelid";
			// 搜尋此飯店有的服務
			break;
		case SELECT_FACILITYNAME:
			HQL = "FROM facilityname";
			// 搜尋配置在DB的全部設施名稱
			break;
		case SELECT_SERVICENAME:
			HQL = "FROM servicename";
			// 搜尋配置在DB的全部服務名稱
			break;
		case SELECT_PHOTONAME:
			HQL = "FROM photoname";
			// 搜尋配置在DB的相片名稱
			break;
		default:
			break;

		}

		return HQL;
	}

}
