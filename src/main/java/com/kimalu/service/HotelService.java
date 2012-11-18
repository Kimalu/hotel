package com.kimalu.service;

import com.kimalu.dao.HotelDAO;
import com.kimalu.dao.RegionDAO;
import com.kimalu.domain.Brand;
import com.kimalu.domain.City;
import com.kimalu.domain.Hotel;
import com.kimalu.domain.Region;
import com.kimalu.domain.i18n.Address;
import com.kimalu.domain.i18n.Description;
import com.kimalu.domain.i18n.Name;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class HotelService /*extends BaseService<Hotel>*/ {
    @Autowired
    private HotelDAO hotelDAO;
    @Autowired
    private RegionDAO regionDAO;
    @Autowired
    private BrandService brandService;

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
        if (regionList.isEmpty()) {
            return new ArrayList<Hotel>();
        }
//        if (regionList.size() == 1) {
//            return hotelDAO.getHotel(hotelPinYin, regionList.get(0));
//        } else {
//            return hotelDAO.getHotel(hotelPinYin, regionList);
//        }
        return new ArrayList<Hotel>();

    }

    @Transactional
    public List<Hotel> getHotel(String hotelPinYin, City city) {
        List<Hotel> hotelList = new ArrayList<Hotel>();
        List<Region> regionList = regionDAO.getRegionsByCity(city);
        hotelList.addAll(this.getHotel(hotelPinYin, regionList));
        return hotelList;
    }

    public void addHotel(Hotel hotel, String brandInfo, String addressInfo, String descriptionInfo) {

        Address adr = new Address();
        adr.setChs(addressInfo);
        Description description =new Description();
        description.setChs(descriptionInfo);
        hotel.setDescription(description);
        hotel.setAddress(adr);
        hotel.setAddress(adr);
        this.hotelDAO.save(hotel);
    }
    @Transactional
    public List<Hotel> getAllHotel() {
        return this.hotelDAO.getList();
    }
}
