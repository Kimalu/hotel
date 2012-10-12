package com.kimalu.domain;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class Hotel {
	@Id
	@GeneratedValue(generator="hotel_uuid")
	@GenericGenerator(name="hotel_uuid", strategy = "uuid")
	private String id;
	@ManyToOne(fetch=FetchType.EAGER)
	private Brand brand;
	private String address;
	private String tel;
	private String introduce;
	private int level;//1-5 星
	
	
	@ManyToOne
	private Region region;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}



	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public Region getRegion() {
		return region;
	}

	public void setRegion(Region region) {
		this.region = region;
	}

}
