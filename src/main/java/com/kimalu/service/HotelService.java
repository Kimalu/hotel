package com.kimalu.service;

import com.kimalu.dao.CityDAO;
import com.kimalu.dao.RegionDAO;
import com.kimalu.domain.City;
import com.kimalu.domain.Hotel;
import com.kimalu.domain.Region;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kimalu.dao.HotelDAO;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

@Service
public class HotelService /*extends BaseService<Hotel>*/ {
    @Autowired
    private HotelDAO hotelDAO;
    @Autowired
    private RegionDAO regionDAO;

    HotelDAO getHotelDAO() {
        return hotelDAO;
    }

    void setHotelDAO(HotelDAO hotelDAO) {
        this.hotelDAO = hotelDAO;
    }

    @Transactional
    public void save(Hotel hotel) {
        hotelDAO.save(hotel);
    }

    @Transactional
    public List<Hotel> getHotel(String hotelPinYin, List<Region> regionList) {
        //Assert.notEmpty(regionList, "");
        if(regionList.isEmpty()){
            return new ArrayList<Hotel>();
        }
        if (regionList.size() == 1) {
            return hotelDAO.getHotel(hotelPinYin, regionList.get(0));
        } else {
            return hotelDAO.getHotel(hotelPinYin, regionList);
        }

    }

    @Transactional
    public List<Hotel> getHotel(String hotelPinYin, City city) {
        List<Hotel> hotelList = new ArrayList<Hotel>();
        List<Region> regionList = regionDAO.getRegionsByCity(city);
        hotelList.addAll(this.getHotel(hotelPinYin, regionList));
        return hotelList;
    }
}
