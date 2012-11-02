package com.kimalu.service;

import com.kimalu.domain.*;
import com.kimalu.domain.enumerate.HouseType;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Date;

public class OrderServiceTest {
    @Test
    public void testSaveOrder() {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext_test.xml");
        OrderService orderService = (OrderService) context.getBean("orderService");
        CityService cityService = (CityService) context.getBean("cityService");
        HotelService hotelService = (HotelService) context.getBean("hotelService");
        BrandService brandService=(BrandService) context.getBean("brandService");
        RoomService roomService=(RoomService) context.getBean("roomService");
        RegionService regionService=(RegionService) context.getBean("regionService");

        City city = cityService.getEntityById("402898d73a534aac013a534ab35d0006");


        Brand brand = new Brand();
        brand.setDiscription("如家酒店，地球人都知道");
        brand.setGrade(9.8F);
        brand.setName("如家快捷酒店");
        brandService.save(brand);

        Region region = new Region();
        region.setCity(city);
        regionService.save(region);

        Hotel hotel = new Hotel();
        hotel.setAddress("火星路297号");
        hotel.setBrand(brand);
        hotel.setName("如家厦门店");
        hotel.setIntroduce("没什么好说的");
        hotel.setLevel(5);
        hotel.setRegion(region);
        hotel.setTel("13600000000");

        hotelService.save(hotel);



        Room room = new Room();
        room.setBedAmount(2);
        room.setCount(20);
        room.setExtemporePrice(400);
        room.setHotel(hotel);
        room.setHouseType(HouseType.cheapness);
        room.setNowPrice(300);
        room.setSingleOrDouble(false);
        room.setSupplyBreakFast(true);
        room.setTotalCount(30);

        roomService.save(room);

        Order order = new Order();
        order.setBeginDate(new Date());
        order.setEndDate(new Date());
        order.setCardCertificateNo("4999555566661111");
        order.setCreateDate(new Date());
        order.setCreditGuarantee(true);
        order.setEmail("zlf112358@163.com");
        order.setEffectMonth(6);
        order.setEffectYear(2013);
        order.setFinished(false);
        order.setCreditCardBackNo("000");
        order.setOrderCount(3);
        order.setOrderNo("001201201210210");
        order.setRemark("test order");
        order.setRoom(room);
        order.setCityName(city.getName());
        order.setProvinceName(city.getProvince().getName());
        order.setHotelName(hotel.getName());
        order.setRegionName(region.getName());
        order.setOrderPersonName("Kimalu");
        order.setOrderPersonTel("13600000000");


        orderService.save(order);

    }

}
