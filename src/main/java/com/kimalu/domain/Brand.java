package com.kimalu.domain;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Brand { //品牌 如：7天连锁酒店，如家快捷酒店
    @Id
    @GeneratedValue(generator = "hotel_uuid")
    @GenericGenerator(name = "hotel_uuid", strategy = "uuid")
    private String id;
    private String name_en;
    private String name_jp;
    private String name_cht;
    private String name_chs;
    private String discription_en;
    private String discription_jp;
    private String discription_cht;
    private String discription_chs;
    private String level;
    private float score;  //评分  用来对酒店品牌进行排行    需要一种算法 来计算  如果提供会员注册，那么会员可以给予评分 如果没有评分，那么设定重复选该酒店的分值

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getName_en() {
        return name_en;
    }

    public void setName_en(String name_en) {
        this.name_en = name_en;
    }

    public String getName_jp() {
        return name_jp;
    }

    public void setName_jp(String name_jp) {
        this.name_jp = name_jp;
    }

    public String getName_cht() {
        return name_cht;
    }

    public void setName_cht(String name_cht) {
        this.name_cht = name_cht;
    }

    public String getName_chs() {
        return name_chs;
    }

    public void setName_chs(String name_chs) {
        this.name_chs = name_chs;
    }

    public String getDiscription_en() {
        return discription_en;
    }

    public void setDiscription_en(String discription_en) {
        this.discription_en = discription_en;
    }

    public String getDiscription_jp() {
        return discription_jp;
    }

    public void setDiscription_jp(String discription_jp) {
        this.discription_jp = discription_jp;
    }

    public String getDiscription_cht() {
        return discription_cht;
    }

    public void setDiscription_cht(String discription_cht) {
        this.discription_cht = discription_cht;
    }

    public String getDiscription_chs() {
        return discription_chs;
    }

    public void setDiscription_chs(String discription_chs) {
        this.discription_chs = discription_chs;
    }

    public float getScore() {
        return score;
    }

    public void setScore(float score) {
        this.score = score;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

}
