package com.kimalu.dao;

import com.kimalu.domain.City;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.kimalu.domain.Region;

import java.util.List;

@Repository
public class RegionDAO extends BaseDAO<Region> {

    public List<Region> getRegionsByCity(City city) {
        if(city==null){
            return this.getRegions();
        }
        return this.getRegionsByCityId(city.getId());
    }

    //尽量不要调用到，数据量太大
    @Deprecated
    private List<Region> getRegions() {
        return this.getList(" from Region ");
    }

    public List<Region> getRegionsByCityId(String cityId) {
//        StringBuffer hql=new StringBuffer(" from Region r where r.city.id=? ") ;
//        return this.getList(hql.toString(),cityId);

        return this.getList(Restrictions.eq("city.id",cityId));
    }
}
