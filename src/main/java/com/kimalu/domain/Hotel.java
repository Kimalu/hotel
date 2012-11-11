package com.kimalu.domain;

import com.kimalu.domain.i18n.Address;
import com.kimalu.domain.i18n.Description;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
public class Hotel {
    @Id
    @GeneratedValue(generator = "hotel_uuid")
    @GenericGenerator(name = "hotel_uuid", strategy = "uuid")
    private String id;
    @ManyToOne(cascade =CascadeType.ALL)        //TODO 品牌维护做好之后要取消级联
    private Brand brand;
    @ManyToOne
    private Region region;
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "address_id")
    private Address address;
    private String tel;
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name ="description_id")
    private Description description;

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public Description getDescription() {
        return description;
    }

    public void setDescription(Description description) {
        this.description = description;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
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
