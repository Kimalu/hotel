package com.kimalu.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;


//省份
@Entity
public class Province {
	@Id
	@GeneratedValue(generator="hotel_uuid")
	@GenericGenerator(name="hotel_uuid", strategy = "uuid")
    private String id;
    private String name;
    private boolean isHot=false;
    private boolean isAutonomousRegion=false;  //自治区
    private boolean isSpecialAdministrativeRegion=false;  //特别行政区
    private String pinyin;			//拼音
    
    
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
/*	public boolean isAdministrativeArea() {
		return administrativeArea;
	}
	public void setAdministrativeArea(boolean administrativeArea) {
		this.administrativeArea = administrativeArea;
	}*/
//	public boolean isDirectlyGovernedCity() {
//		return isDirectlyGovernedCity;
//	}
//	public void setDirectlyGovernedCity(boolean isDirectlyGovernedCity) {
//		this.isDirectlyGovernedCity = isDirectlyGovernedCity;
//	}
	public boolean isAutonomousRegion() {
		return isAutonomousRegion;
	}
	public void setAutonomousRegion(boolean isAutonomousRegion) {
		this.isAutonomousRegion = isAutonomousRegion;
	}
	public boolean isSpecialAdministrativeRegion() {
		return isSpecialAdministrativeRegion;
	}
	public void setSpecialAdministrativeRegion(boolean isSpecialAdministrativeRegion) {
		this.isSpecialAdministrativeRegion = isSpecialAdministrativeRegion;
	}
	public String getPinyin() {
		return pinyin;
	}
	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}


}
