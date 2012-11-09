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
	@ManyToOne
	private Brand brand;
    private String address_en;
    private String address_jp;
    private String address_chs;
    private String address_cht;
    private String tel;
    private String introduce_en;
    private String introduce_jp;
    private String introduce_chs;
    private String introduce_cht;

    @ManyToOne
    private Region region;

    public String getAddress_en() {
        return address_en;
    }

    public void setAddress_en(String address_en) {
        this.address_en = address_en;
    }

    public String getAddress_jp() {
        return address_jp;
    }

    public void setAddress_jp(String address_jp) {
        this.address_jp = address_jp;
    }

    public String getAddress_chs() {
        return address_chs;
    }

    public void setAddress_chs(String address_chs) {
        this.address_chs = address_chs;
    }

    public String getAddress_cht() {
        return address_cht;
    }

    public void setAddress_cht(String address_cht) {
        this.address_cht = address_cht;
    }

    public String getIntroduce_en() {
        return introduce_en;
    }

    public void setIntroduce_en(String introduce_en) {
        this.introduce_en = introduce_en;
    }

    public String getIntroduce_jp() {
        return introduce_jp;
    }

    public void setIntroduce_jp(String introduce_jp) {
        this.introduce_jp = introduce_jp;
    }

    public String getIntroduce_chs() {
        return introduce_chs;
    }

    public void setIntroduce_chs(String introduce_chs) {
        this.introduce_chs = introduce_chs;
    }

    public String getIntroduce_cht() {
        return introduce_cht;
    }

    public void setIntroduce_cht(String introduce_cht) {
        this.introduce_cht = introduce_cht;
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
