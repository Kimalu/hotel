package com.kimalu.domain.DTO;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 12-10-30
 * Time: 下午7:56
 * To change this template use File | Settings | File Templates.
 */
public class SearchCityDTO {

    private String id;
    private String value;   //city 的拼音

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
