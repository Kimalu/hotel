package com.kimalu.domain;

import com.kimalu.domain.i18n.Name;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

//市
@Entity
public class City {
    @Id
    @GeneratedValue(generator = "hotel_uuid")
    @GenericGenerator(name = "hotel_uuid", strategy = "uuid")
    private String id;

    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "name_id")
    private Name name;
    @ManyToOne
    private Province province;


    private boolean isHot;
    private boolean isDirectlyGovernedCity = false;  //直辖市

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

    public Province getProvince() {
        return province;
    }

    public void setProvince(Province province) {
        this.province = province;
    }

    public boolean isHot() {
        return isHot;
    }

    public void setHot(boolean isHot) {
        this.isHot = isHot;
    }

    public boolean isDirectlyGovernedCity() {
        return isDirectlyGovernedCity;
    }

    public void setDirectlyGovernedCity(boolean isDirectlyGovernedCity) {
        this.isDirectlyGovernedCity = isDirectlyGovernedCity;
    }


}
