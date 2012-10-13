package com.kimalu.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import org.hibernate.annotations.GenericGenerator;
import com.kimalu.domain.enumerate.HouseType;

@Entity//房型
public class Room {
	@Id
	@GeneratedValue(generator="hotel_uuid")
	@GenericGenerator(name="hotel_uuid", strategy = "uuid")
	private String id;
	
	@Column(nullable=false)
	@Enumerated(EnumType.ORDINAL)
	private HouseType houseType=HouseType.normal;  //房型 默认普通
	
	@ManyToOne
	private Hotel hotel;
	@Column(nullable=false)
	private float extemporePrice;  //当场价格 即门市价
	@Column(nullable=false)
	private float nowPrice;		 //现价 不高于门市价的优惠价格
	@Column(nullable=false)
	private boolean singleOrDouble;  // 单人房或双人房true is single, false is double
	@Column(nullable=false)
	private boolean isSupplyBreakFast;		//是否提供早餐
	@Column(nullable=false)
	private int bedAmount;		//床的数量	
	@Column(nullable=false)
	private String roomNo;  //房间号
	
	private int count; //还有多少空房间
	
	private int totalCount;	//改类型房间的总数
	

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public HouseType getHouseType() {
		return houseType;
	}

	public void setHouseType(HouseType houseType) {
		this.houseType = houseType;
	}

	public Hotel getHotel() {
		return hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	public float getExtemporePrice() {
		return extemporePrice;
	}

	public void setExtemporePrice(float extemporePrice) {
		this.extemporePrice = extemporePrice;
	}

	public float getNowPrice() {
		return nowPrice;
	}

	public void setNowPrice(float nowPrice) {
		this.nowPrice = nowPrice;
	}

	public boolean isSingleOrDouble() {
		return singleOrDouble;
	}

	public void setSingleOrDouble(boolean singleOrDouble) {
		this.singleOrDouble = singleOrDouble;
	}

	public boolean isSupplyBreakFast() {
		return isSupplyBreakFast;
	}

	public void setSupplyBreakFast(boolean isSupplyBreakFast) {
		this.isSupplyBreakFast = isSupplyBreakFast;
	}

	public int getBedAmount() {
		return bedAmount;
	}

	public void setBedAmount(int bedAmount) {
		this.bedAmount = bedAmount;
	}

	public String getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	

}
