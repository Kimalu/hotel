package com.kimalu.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.kimalu.domain.City;

@Repository
public class CityDAO extends BaseDAO<City> {

    private List<City> allCity;

    public List<String> getAllCityPinYin() {
        StringBuffer hql=new StringBuffer();
        hql.append("select c.pinyin from City c");
        Query query=this.createQuery(hql.toString(), null);
        return (List<String>)query.list();
    }

    public City getCityByPinYin(String cityNamePinYin) {
        StringBuffer hql=new StringBuffer(" from City c where c.pinyin= ? ");
        return this.getUnique(hql.toString(),cityNamePinYin);
    }

}