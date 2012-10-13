package com.kimalu.controller;

import java.io.IOException;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kimalu.service.CityService;

@Controller
@RequestMapping("/city")
public class CityController extends BaseController {
	
	@Autowired
	private CityService cityService;
	
	@RequestMapping(value="/getAllCityPinYin",method=RequestMethod.POST)
	@ResponseBody
	public String getAllCityPinYin() throws JsonGenerationException, JsonMappingException, IOException{
		List<String> allCityPinYin=cityService.getAllCityPinYin();
		String result=toJson(allCityPinYin);
		return result;
	}
}
