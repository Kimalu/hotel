package com.kimalu.dao;

import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.kimalu.domain.Province;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class ProvinceDAO extends BaseDAO<Province> {
	
	
	public Province getProvinceByName(String name) {
		StringBuffer hql = new StringBuffer();
		hql.append(" from Province p where p.name = ? ");
		return this.getUnique(hql.toString(), name);
	}


    public List<Province> getAll() {
        return this.getList();
    }

    public Province getUniqueNameChs(String chs){
        Criteria criteria= this.getSession().createCriteria(Province.class).createCriteria("name").add(Restrictions.like("chs",chs));
        return super.getUnique(criteria);
    }
}
