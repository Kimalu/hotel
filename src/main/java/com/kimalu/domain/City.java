package com.kimalu.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.GenericGenerator;

//市
@Entity
public class City {
	@Id
	@GeneratedValue(generator="hotel_uuid")
	@GenericGenerator(name="hotel_uuid", strategy = "uuid")
    private String id;
	
	@ManyToOne
    private Province province;
    private String name;
    private boolean isHot;
    
    private String pinyin;//拼音
    private boolean isDirectlyGovernedCity=false;  //直辖市
    
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Province getProvince() {
		return province;
	}
	public void setProvince(Province province) {
		this.province = province;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isHot() {
		return isHot;
	}
	public void setHot(boolean isHot) {
		this.isHot = isHot;
	}
	public String getPinyin() {
		return pinyin;
	}
	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}
	public boolean isDirectlyGovernedCity() {
		return isDirectlyGovernedCity;
	}
	public void setDirectlyGovernedCity(boolean isDirectlyGovernedCity) {
		this.isDirectlyGovernedCity = isDirectlyGovernedCity;
	}
	

}
