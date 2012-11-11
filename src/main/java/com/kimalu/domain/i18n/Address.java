package com.kimalu.domain.i18n;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created with IntelliJ IDEA.
 * User: Kimalu
 * Date: 12-11-10
 * Time: 上午11:28
 * 版权归作者Kimalu所有，未经许可不得盗用，违者必究！
 */
@Entity
public class Address {

    @Id
    @GeneratedValue(generator = "hotel_uuid")
    @GenericGenerator(name = "hotel_uuid", strategy = "uuid")
    private String id;
    private String en;
    private String jp;
    private String chs;
    private String cht;

    public String getEn() {
        return en;
    }

    public void setEn(String en) {
        this.en = en;
    }

    public String getJp() {
        return jp;
    }

    public void setJp(String jp) {
        this.jp = jp;
    }

    public String getChs() {
        return chs;
    }

    public void setChs(String chs) {
        this.chs = chs;
    }

    public String getCht() {
        return cht;
    }

    public void setCht(String cht) {
        this.cht = cht;
    }



    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }


}
