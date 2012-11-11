package com.kimalu.controller;

import com.kimalu.domain.City;
import com.kimalu.domain.DTO.SearchCityDTO;
import com.kimalu.service.CityService;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Controller
@RequestMapping("/city")
public class CityController extends BaseController {

    @Autowired
    private CityService cityService;

//    @RequestMapping(value="/getAllCityPinYin",method=RequestMethod.POST)
//    @ResponseBody
//    public String getAllCityPinYin() throws JsonGenerationException, JsonMappingException, IOException{
//        List<SearchCityDTO> cityDTOList=new ArrayList<SearchCityDTO>();
//        List<City> allCityList=cityService.getAllCity();
//        for (Iterator<City> iterator = allCityList.iterator(); iterator.hasNext(); ) {
//            City next =  iterator.next();
//            SearchCityDTO dto=new SearchCityDTO();
//            dto.setId(next.getId());
//         //   dto.setValue(next.getPinyin());
//            cityDTOList.add(dto);
//        }
//        return toJson(cityDTOList);
//    }

    @RequestMapping(value="/getCityByProvinceId",method=RequestMethod.GET)
    @ResponseBody
    public String getCityByProvinceId(String provinceId) throws JsonGenerationException, JsonMappingException, IOException{
        List<City> cityList=cityService.getCityByProvinceId(provinceId);
        String result=toJson(cityList);
        return result;
    }
}
