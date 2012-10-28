package com.kimalu.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class Brand { //品牌 如：7天连锁酒店，如家快捷酒店
	@Id
	@GeneratedValue(generator="hotel_uuid")
	@GenericGenerator(name="hotel_uuid", strategy = "uuid")
	private String id;
	private String name;

    private String pinyin;
    @Column(nullable=false)
	private float grade;  //评分  用来对酒店品牌进行排行    需要一种算法 来计算  如果提供会员注册，那么会员可以给予评分 如果没有评分，那么设定重复选该酒店的分值
	private String discription;
	
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
	public String getDiscription() {
		return discription;
	}
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	public float getGrade() {
		return grade;
	}
	public void setGrade(float grade) {
		this.grade = grade;
	}

}
