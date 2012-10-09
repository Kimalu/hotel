package com.kimalu.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

@Entity
public class Hotel {
	@Id
	@GeneratedValue(generator="hotel_uuid")
	@GenericGenerator(name="hotel_uuid", strategy = "uuid")
	private String id;
	@ManyToOne(fetch=FetchType.EAGER)
	@Cascade(CascadeType.PERSIST)
	private Brand brand;
	private String address;
	private String tel;
	private String introduce;
	private int level;//1-5 星
	
	
	//private String imagePath;
	@ManyToOne
	private City city;
	
	
	
	@ManyToMany
	@JoinTable(name = "region_hotel", joinColumns = @JoinColumn(name = "hotelId"), inverseJoinColumns = @JoinColumn(name = "regionId"))
	@Cascade(value = CascadeType.SAVE_UPDATE)
	private Set<Region> regions=new HashSet<Region>();

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


	public Set<Region> getRegions() {
		return regions;
	}

	public void setRegions(Set<Region> regions) {
		this.regions = regions;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}

}
