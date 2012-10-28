package com.kimalu.dao;

import com.kimalu.domain.City;
import com.kimalu.domain.Region;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import com.kimalu.domain.Hotel;
import org.springframework.util.Assert;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Repository
public class HotelDAO extends BaseDAO<Hotel> {


    public List<Hotel> getHotel(String hotelPinYin, Region region) {
        Assert.notNull(region, "region不能为空");
        List param = new ArrayList();
        StringBuffer hql = new StringBuffer(" from Hotel h where h.region.id = ? ");
        param.add(region.getId());
        if (!StringUtils.isEmpty(hotelPinYin)) {
            hql.append(" and h.brand.pinyin= ? ");
            param.add(hotelPinYin);
        }
        return this.getList(hql.toString(), param);
    }

    public List<Hotel> getHotel(String hotelPinYin, List<Region> regions) {
        List<String> regionsIdList = new ArrayList<String>();
        for (Iterator<Region> iterator = regions.iterator(); iterator.hasNext(); ) {
            regionsIdList.add(iterator.next().getId());
        }
        List param = new ArrayList();
        StringBuffer hql = new StringBuffer(" from Hotel h where h.region.id in ? ");
        param.add(regionsIdList);
        if (!StringUtils.isEmpty(hotelPinYin)) {
            hql.append(" and h.brand.pinyin= ? ");
            param.add(hotelPinYin);
        }
        return this.getList(hql.toString(), param);
    }
}
