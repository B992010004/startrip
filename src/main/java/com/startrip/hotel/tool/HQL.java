package com.startrip.hotel.tool;

public enum HQL {
	SELECT_ROOMTYPE_BY_HOTELID,
	DELETE_FACILITY_BY_HOTELID,
	SELECT_FACILITY_BY_HOTELID,
	DELETE_SERVICE_BY_HOTELID,
	SELECT_SERVICE_BY_HOTELID,
	SELECT_PHOTONAME,
	SELECT_FACILITYNAME,
	SELECT_SERVICENAME;

	private String HQL;

	public String execute() {
		switch (this) {
		case SELECT_ROOMTYPE_BY_HOTELID:
			HQL = "FROM roomtype WHERE hotelid = :hotelid ORDER BY roomid DESC";
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

		}

		return HQL;
	}

}
