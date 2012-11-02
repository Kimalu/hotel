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

    @RequestMapping(value = "/searchHotelByCityAndPinyin", method = RequestMethod.POST)
    public String searchHotelByCityAndPinyin(String cityId, String hotelPinYin, ModelMap modelMap) throws JsonGenerationException, JsonMappingException, IOException {
        City city = cityService.getEntityById(cityId);
        List<Hotel> hotelList = new ArrayList<Hotel>();
        hotelList.addAll(hotelService.getHotel(hotelPinYin, city));
        modelMap.addAttribute("hotelList", hotelList);
        return "front/hotelList";
    }
}
