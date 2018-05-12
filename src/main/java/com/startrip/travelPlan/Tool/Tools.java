package com.startrip.travelPlan.Tool;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class Tools {
public static String covertDate(Date time) {
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
	String value =sdf.format(time);
	
	return value;
}
}
