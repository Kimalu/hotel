package com.kimalu.dao;

import org.springframework.stereotype.Repository;

import com.kimalu.domain.Province;

@Repository
public class ProvinceDAO extends BaseDAO<Province> {
	
	
	public Province getProvinceByName(String name) {
		StringBuffer hql = new StringBuffer();
		hql.append(" from Province p where p.name = ? ");
		return this.getUnique(hql.toString(), name);
	}
	

}
