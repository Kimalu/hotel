package com.kimalu.service;

import com.kimalu.dao.CityDAO;
import com.kimalu.dao.RegionDAO;
import com.kimalu.domain.City;
import com.kimalu.domain.Region;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Kimalu
 * Date: 12-10-27
 * Time: 上午10:35
 * To change this template use File | Settings | File Templates.
 */
@Service
public class RegionService {
    @Autowired
    private RegionDAO regionDAO;
    @Autowired
    private CityDAO cityDAO;

    @Transactional
    public Serializable save(Region t) {
        return regionDAO.save(t);
    }
    @Transactional
    public List<Region> getRegionsByCity(String cityNamePinYin) {
        City city=cityDAO.getCityByPinYin(cityNamePinYin);
        return regionDAO.getRegionsByCity(city);
    }
}
