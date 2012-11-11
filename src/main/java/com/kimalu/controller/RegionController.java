package com.kimalu.controller;

import com.kimalu.domain.Region;
import com.kimalu.service.RegionService;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/region")
public class RegionController extends BaseController {

    @Autowired
    private RegionService regionService;

    //	@RequestMapping(value="/getRegionPinYinByCity",method=RequestMethod.POST)
//	@ResponseBody
//	public String getRegionPinYinByCity(String cityNamePinYin) throws JsonGenerationException, JsonMappingException, IOException{
//		List<Region> allRegion=regionService.getRegionsByCity(cityNamePinYin);
//		String result=toJson(allRegion);
//		return result;
//	}
    @RequestMapping(value = "/getRegionByCityId")
    @ResponseBody
    public String getRegionByCityId(String cityId) throws JsonGenerationException, JsonMappingException, IOException {
        List<Region> regionList = regionService.getRegionsByCityId(cityId);
        String result = toJson(regionList);
        return result;
    }

}
