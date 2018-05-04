package com.startrip.hotel.model.persistent;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name="roomtype")
public class RoomtypeBean {
//	CREATE TABLE roomtype(
//			hotelid INT FOREIGN KEY REFERENCES hotels(hotelid),
//			roomstate INT FOREIGN KEY REFERENCES roomstate(stateid),
//			roomid INT IDENTITY NOT NULL PRIMARY KEY,
//			roomname VARCHAR(30),
//			numberofpeople INT,
//			numberofrooms INT,
//			opendate DATE,
//			enddate DATE,
//			extrabed BIT,
//			extrabedprice FLOAT,
//			);
	@Id
	@ManyToOne
	@JoinColumn(name="hotelid")
	private Integer hotelid;
	
	@ManyToOne
	@JoinColumn(name="roomstateid")
	private Integer roomstate;
	private Integer roomid;
	private Integer roomname;
	private Integer numberofpeople;
	private Integer numberofrooms;
	private Integer opendate;
	private Integer enddate;
	private Integer extrabed;
	private Integer extrabedprice;
	
}
