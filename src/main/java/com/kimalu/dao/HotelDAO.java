package com.kimalu.dao;

import com.kimalu.dao.page.Page;
import com.kimalu.dao.page.PageBaseDAO;
import com.kimalu.domain.City;
import com.kimalu.domain.Hotel;
import com.kimalu.domain.Region;
import org.apache.commons.lang.StringUtils;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.util.Assert;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Repository
public class HotelDAO extends PageBaseDAO<Hotel> {

//    public Page<Hotel> getHotel(Page<Hotel> page,String hotelName, Region region) {
//        Assert.notNull(region, "region不能为空");
//        List param = new ArrayList();
//        StringBuffer hql = new StringBuffer(" from Hotel h where h.region.id = ? ");
//        param.add(region.getId());
//        if (!StringUtils.isEmpty(hotelName)) {
//            hql.append(" and h.brand.pinyin= ? ");
//            param.add(hotelName);
//        }
//        return   this.getPage(page,hql.toString(),param);
//    }

    public Page<Hotel> getHotel(Page<Hotel> page,String hotelName, List<Region> regions) {

        List<String> regionsIdList = new ArrayList<String>();
        for (Iterator<Region> iterator = regions.iterator(); iterator.hasNext(); ) {
            regionsIdList.add(iterator.next().getId());
        }
        Criteria criteria= this.getSession().createCriteria(Hotel.class).add(Restrictions.in("region.id",regionsIdList));
        if (!StringUtils.isEmpty(hotelName)) {
            criteria.createCriteria("brand").createCriteria("name").add(Restrictions.like("chs",hotelName));
        }
       return this.getPage(page, criteria);

    }


}
