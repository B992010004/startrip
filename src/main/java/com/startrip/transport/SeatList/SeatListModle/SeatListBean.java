package com.startrip.transport.SeatList.SeatListModle;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "SeatList")
public class SeatListBean implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer SeatListNumber;

	private Integer Trip;

	private Integer SeatNumber;

	private Integer OrderNumber;

	@Override
	public String toString() {
		return "SeatListBean [SeatListNumber=" + SeatListNumber + ", Trip=" + Trip + ", SeatNumber=" + SeatNumber
				+ ", OrderNumber=" + OrderNumber + "]";
	}

	public Integer getSeatListNumber() {
		return SeatListNumber;
	}

	public void setSeatListNumber(Integer seatListNumber) {
		SeatListNumber = seatListNumber;
	}

	public Integer getTrip() {
		return Trip;
	}

	public void setTrip(Integer trip) {
		Trip = trip;
	}

	public Integer getSeatNumber() {
		return SeatNumber;
	}

	public void setSeatNumber(Integer seatNumber) {
		SeatNumber = seatNumber;
	}

	public Integer getOrderNumber() {
		return OrderNumber;
	}

	public void setOrderNumber(Integer orderNumber) {
		OrderNumber = orderNumber;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	
	
}
