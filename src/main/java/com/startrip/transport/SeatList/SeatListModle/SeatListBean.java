package com.startrip.transport.SeatList.SeatListModle;

import java.io.Serializable;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.GeneratorType;

public class SeatListBean implements Serializable{

	
	
	private static final long serialVersionUID = 1L;
	
	
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer SeatListNumber;
	
	private Integer Trip;
	
	private Integer SeatNumber;
	
	private Integer Seat;
	
	private Integer OrderNumber;
	
}
