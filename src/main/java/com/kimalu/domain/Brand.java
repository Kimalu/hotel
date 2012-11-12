package com.kimalu.domain;

import com.kimalu.domain.i18n.Description;
import com.kimalu.domain.i18n.Name;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
public class Brand { //品牌 如：7天连锁酒店，如家快捷酒店
    @Id
    @GeneratedValue(generator = "hotel_uuid")
    @GenericGenerator(name = "hotel_uuid", strategy = "uuid")
    private String id;

    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "name_id")
    private Name name;

    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "description_id")
    private Description description;

    private float level;   //星级
    private float score=0F;  //评分  用来对酒店品牌进行排行    需要一种算法 来计算  如果提供会员注册，那么会员可以给予评分 如果没有评分，那么设定重复选该酒店的分值

    public Description getDescription() {
        return description;
    }

    public void setDescription(Description description) {
        this.description = description;
    }

    public float getLevel() {
        return level;
    }

    public void setLevel(float level) {
        this.level = level;
    }

    public Name getName() {
        return name;
    }

    public void setName(Name name) {
        this.name = name;
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
