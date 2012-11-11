package com.kimalu.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

import com.kimalu.domain.i18n.Name;
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
    @OneToOne(fetch = FetchType.EAGER, cascade = javax.persistence.CascadeType.ALL)
    @JoinColumn(name = "name_id")
    private Name name;
    @ManyToOne
    private City city;

    public Name getName() {
        return name;
    }

    public void setName(Name name) {
        this.name = name;
    }
    
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public City getCity() {
		return city;
	}
	public void setCity(City city) {
		this.city = city;
	}
	
}
