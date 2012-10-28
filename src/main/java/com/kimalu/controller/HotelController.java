package com.kimalu.controller;

import com.kimalu.domain.City;
import com.kimalu.domain.Hotel;
import com.kimalu.domain.Order;
import com.kimalu.service.CityService;
import com.kimalu.service.HotelService;
import com.kimalu.service.OrderService;
import org.apache.commons.lang.StringUtils;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/hotel")
public class HotelController extends BaseController {

    @Autowired
    private HotelService hotelService;
    @Autowired
    private CityService cityService;

    @RequestMapping(value = "/searchHotelByCity", method = RequestMethod.GET)
    public String searchHotelByCity(String cityPinYin, String hotelPinYin, ModelMap modelMap) throws JsonGenerationException, JsonMappingException, IOException {
        City city=null;
        List<Hotel> hotelList=new ArrayList<Hotel>();
        if(StringUtils.isEmpty(cityPinYin)) {
            city=cityService.getCityByPinYin(cityPinYin);
        }
        if(StringUtils.isEmpty(hotelPinYin)) {
            hotelList.addAll(hotelService.getHotel(hotelPinYin, city));
        }

        return "admin/order/order_maint";
    }
}
