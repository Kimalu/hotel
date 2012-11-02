package com.kimalu.service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kimalu.dao.CityDAO;
import com.kimalu.domain.City;

@Service
public class CityService /*extends BaseService<City>*/{
	@Autowired
	private CityDAO cityDAO;

	CityDAO getCityDAO() {
		return cityDAO;
	}

	void setCityDAO(CityDAO cityDAO) {
		this.cityDAO = cityDAO;
	}
	
	@Transactional
	public Serializable save(City t) {
		return cityDAO.save(t);
	}
	
	@Transactional
	public List<Serializable> saveList(List<City> list) {
		List<Serializable> idList = new ArrayList<Serializable>();
		for (Iterator<City> iterator = list.iterator(); iterator.hasNext();) {
			City entity = (City) iterator.next();
			idList.add(cityDAO.save(entity));
		}
		return idList;
	}
	
	@Transactional
	public void del(City t) {
		cityDAO.del(t);
	}
	@Transactional
	public City getEntityById(Serializable id) {
		return cityDAO.getEntityById(id);
	}
	@Transactional
	public void update(City t) {
		cityDAO.update(t);
	}
	@Transactional
	public List<String> getAllCityPinYin() {
		return cityDAO.getAllCityPinYin();
	}


    public City getCityByPinYin(String cityPinYin) {
        return null;
    }
     @Transactional
    public List<City> getAllCity() {
        return cityDAO.getAllCity();
    }
}
