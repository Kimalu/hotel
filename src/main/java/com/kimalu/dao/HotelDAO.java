package com.kimalu.dao;

import com.kimalu.dao.page.Page;
import com.kimalu.dao.page.PageBaseDAO;
import com.kimalu.domain.Hotel;
import com.kimalu.domain.Region;
import org.apache.commons.lang.StringUtils;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.util.Assert;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Repository
public class HotelDAO extends PageBaseDAO<Hotel> {

    public Page<Hotel> getHotel(Page<Hotel> page,String hotelPinYin, Region region) {
        Assert.notNull(region, "region不能为空");
        List param = new ArrayList();
        StringBuffer hql = new StringBuffer(" from Hotel h where h.region.id = ? ");
        param.add(region.getId());
        if (!StringUtils.isEmpty(hotelPinYin)) {
            hql.append(" and h.brand.pinyin= ? ");
            param.add(hotelPinYin);
        }
        return   this.getPage(page,hql.toString(),param);
    }

    public Page<Hotel> getHotel(Page<Hotel> page,String pinYin, List<Region> regions) {

        List<String> regionsIdList = new ArrayList<String>();
        for (Iterator<Region> iterator = regions.iterator(); iterator.hasNext(); ) {
            regionsIdList.add(iterator.next().getId());
        }
       return this.getPage(page, Restrictions.in("region.id",regionsIdList),Restrictions.like("name.en",pinYin));

    }
}
