package com.kimalu.domain;

import com.kimalu.domain.i18n.Name;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;


//省份
@Entity
public class Province {
    @Id
    @GeneratedValue(generator = "hotel_uuid")
    @GenericGenerator(name = "hotel_uuid", strategy = "uuid")
    private String id;


    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "name_id")
    private Name name;
    private boolean isHot = false;
    private boolean isAutonomousRegion = false;  //自治区
    private boolean isSpecialAdministrativeRegion = false;  //特别行政区

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

    public boolean isHot() {
        return isHot;
    }

    public void setHot(boolean isHot) {
        this.isHot = isHot;
    }

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


}
