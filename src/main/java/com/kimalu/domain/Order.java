package com.kimalu.domain;

import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.annotations.GenericGenerator;

public class Order {
	@Id
	@GeneratedValue(generator="hotel_uuid")
	@GenericGenerator(name="hotel_uuid", strategy = "uuid")
	private String id;
	private Date beginDate;
	private Date endDate;
	private int orderCount;  //预订的房间数
	
	private Customer orderCustomer;
	
	@OneToOne
	@JoinColumn(name = "roomId") 
	private Room room;
	
	
	
	
	public int getOrderCount() {
		return orderCount;
	}

	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getBeginDate() {
		return beginDate;
	}

	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

}
