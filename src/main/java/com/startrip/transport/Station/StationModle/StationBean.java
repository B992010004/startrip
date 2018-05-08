package com.startrip.transport.Station.StationModle;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
	@Table(name="STATION")
	public class StationBean implements Serializable{

		 

			private static final long serialVersionUID = 1L;
			
			@Id
			@GeneratedValue(strategy=GenerationType.IDENTITY)
			private Integer stationId;
			
			private String area;
			
			private String stationName;

			
			
			
			@Override
			public String toString() {
				return "StationBean [stationId=" + stationId + ", area=" + area + ", stationName=" + stationName + "]";
			}

			public Integer getStationId() {
				return stationId;
			}

			public void setStationId(Integer stationId) {
				this.stationId = stationId;
			}

			public String getArea() {
				return area;
			}

			public void setArea(String area) {
				this.area = area;
			}

			public String getStationName() {
				return stationName;
			}

			public void setStationName(String stationName) {
				this.stationName = stationName;
			}

			
			
			
			
	
}
