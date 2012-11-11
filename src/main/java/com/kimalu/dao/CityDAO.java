package com.kimalu.dao;

import java.util.List;

import com.kimalu.domain.Province;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.kimalu.domain.City;

@Repository
public class CityDAO extends BaseDAO<City> {


    public List<String> getAllCityPinYin() {
        StringBuffer hql=new StringBuffer();
        hql.append("select c.pinyin from City c");
        Query query=this.createQuery(hql.toString());
        return (List<String>)query.list();
    }

    public City getCityByPinYin(String cityNamePinYin) {
        StringBuffer hql=new StringBuffer(" from City c where c.pinyin= ? ");
        return this.getUnique(hql.toString(),cityNamePinYin);
    }

    public List<City> getAllCity() {
        StringBuffer hql=new StringBuffer(" from City c ");
        return this.getList(hql.toString());
    }

    public List<City> getCityByProvinceId(String provinceId) {
        return this.getList(Restrictions.eq("province.id",provinceId));
    }

    public City getUniqueNameChs(String chs) {
        Criteria criteria= this.getSession().createCriteria(City.class).createCriteria("name").add(Restrictions.like("chs",chs));
        return super.getUnique(criteria);
    }
}