package com.kimalu.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

//区县
@Entity
public class Region {
	@Id
	@GeneratedValue(generator="hotel_uuid")
	@GenericGenerator(name="hotel_uuid", strategy = "uuid")
    private String id;
    private String name;
    @ManyToOne
    private City city;
    
	@OneToMany(mappedBy = "region")
    private Set<Hotel> hotels=new HashSet<Hotel>();
    
    
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
	public City getCity() {
		return city;
	}
	public void setCity(City city) {
		this.city = city;
	}
	
	public Set<Hotel> getHotels() {
		return hotels;
	}
	public void setHotels(Set<Hotel> hotels) {
		this.hotels = hotels;
	}
}
