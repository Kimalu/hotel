package com.kimalu.service;

import com.kimalu.dao.BrandDAO;
import com.kimalu.dao.HotelDAO;
import com.kimalu.dao.RegionDAO;
import com.kimalu.dao.page.Page;
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
    private BrandDAO brandDAO;
//    @Autowired
//    private BrandService brandService;

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
    public Page<Hotel> getHotel(Page<Hotel> page, String hotelName, List<Region> regionList) {
        //Assert.notEmpty(regionList, "");
        if (!regionList.isEmpty()) {
            if (regionList.size() == 1) {
                return hotelDAO.getHotel(page, hotelName, regionList.get(0));
            } else {
                return hotelDAO.getHotel(page, hotelName, regionList);
            }
        }
        return page;

    }

    @Transactional
    public Page<Hotel> getHotel(Page page, String hotelName, City city) {
        List<Hotel> hotelList = new ArrayList<Hotel>();
        List<Region> regionList = regionDAO.getRegionsByCity(city);
        return this.getHotel(page, hotelName, regionList);
    }

    //    public void addHotel(Hotel hotel, String brandInfo, String addressInfo, String descriptionInfo) {
//
//        Address adr = new Address();
//        adr.setChs(addressInfo);
//        Description description =new Description();
//        description.setChs(descriptionInfo);
//        hotel.setDescription(description);
//        hotel.setAddress(adr);
//        this.hotelDAO.save(hotel);
//    }
    public void addHotel(Hotel hotel) {
        String brandId = hotel.getBrand().getId();
        Brand brand = brandDAO.getEntityById(brandId);
        String regionId = hotel.getRegion().getId();
        Region region = regionDAO.getEntityById(regionId);
        hotel.setBrand(brand);
        hotel.setRegion(region);
        this.hotelDAO.save(hotel);
    }

    @Transactional
    public List<Hotel> getAllHotel() {
        return this.hotelDAO.getList();
    }
}
