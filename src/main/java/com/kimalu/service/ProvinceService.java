package com.kimalu.service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kimalu.dao.ProvinceDAO;
import com.kimalu.domain.Province;

@Service
public class ProvinceService/* extends BaseService<Province>*/{
	
	@Autowired
	private ProvinceDAO provinceDAO;

	ProvinceDAO getProvinceDAO() {
		return provinceDAO;
	}

	void setProvinceDAO(ProvinceDAO provinceDAO) {
		this.provinceDAO = provinceDAO;
	}
	
	
	@Transactional
	public Serializable save(Province t) {
		return provinceDAO.save(t);
	}
	@Transactional
	public List<Serializable> saveList(List<Province> list) {
		List<Serializable> idList = new ArrayList<Serializable>();
		for (Iterator<Province> iterator = list.iterator(); iterator.hasNext();) {
			Province entity = (Province) iterator.next();
			idList.add(provinceDAO.save(entity));
		}
		return idList;
	}
	@Transactional
	public void del(Province t) {
		provinceDAO.del(t);
	}
	@Transactional
	public Province getEntityById(Serializable id) {
		return provinceDAO.getEntityById(id);
	}
	
	@Transactional
	public void update(Province t) {
		provinceDAO.update(t);
	}
	
	@Transactional
	public Province getProvinceByName(String name) {
		return provinceDAO.getProvinceByName(name);
	}
	

}
