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
	
	
	private boolean isCreditGuarantee=false;    //是否信用卡担保
	private String orderName;
	private String creditCardNo;			//信用卡号
	private String creditCardBackNo;		//信用卡背后尾数
	private Integer effectMonth;			//有效月份
	private Integer effectYear;				//有效年份
	private String cardCertificateNo;		//办卡的有效证件号  一般可能就身份证号
	
	private String remark;			//备注
	
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

	public boolean isCreditGuarantee() {
		return isCreditGuarantee;
	}

	public void setCreditGuarantee(boolean isCreditGuarantee) {
		this.isCreditGuarantee = isCreditGuarantee;
	}

	public String getOrderName() {
		return orderName;
	}

	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}

	public String getCreditCardNo() {
		return creditCardNo;
	}

	public void setCreditCardNo(String creditCardNo) {
		this.creditCardNo = creditCardNo;
	}

	public String getCreditCardBackNo() {
		return creditCardBackNo;
	}

	public void setCreditCardBackNo(String creditCardBackNo) {
		this.creditCardBackNo = creditCardBackNo;
	}

	public Integer getEffectMonth() {
		return effectMonth;
	}

	public void setEffectMonth(Integer effectMonth) {
		this.effectMonth = effectMonth;
	}

	public Integer getEffectYear() {
		return effectYear;
	}

	public void setEffectYear(Integer effectYear) {
		this.effectYear = effectYear;
	}

	public String getCardCertificateNo() {
		return cardCertificateNo;
	}

	public void setCardCertificateNo(String cardCertificateNo) {
		this.cardCertificateNo = cardCertificateNo;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}
