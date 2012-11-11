package com.kimalu.dao;

import com.kimalu.domain.Brand;
import com.kimalu.domain.Province;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

/**
 * Created with IntelliJ IDEA.
 * User: Kimalu
 * Date: 12-10-27
 * Time: 上午10:00
 * To change this template use File | Settings | File Templates.
 */
@Repository
public class BrandDAO extends BaseDAO<Brand> {

    public Brand getUniqueNameChs(String chs) {
        Criteria criteria= this.getSession().createCriteria(Brand.class).createCriteria("name").add(Restrictions.like("chs", chs));
        return super.getUnique(criteria);
    }
}
