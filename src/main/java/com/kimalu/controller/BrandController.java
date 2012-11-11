package com.kimalu.controller;

import com.kimalu.domain.Brand;
import com.kimalu.domain.City;
import com.kimalu.service.BrandService;
import com.kimalu.service.CityService;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/brand")
public class BrandController extends BaseController {

    @Autowired
    private BrandService brandService;

    @RequestMapping(value="/manager",method=RequestMethod.GET)
    public String manager(ModelMap  modelMap) throws JsonGenerationException, JsonMappingException, IOException{
        List<Brand> brandList=this.brandService.getAllBrand();
        modelMap.addAttribute("brandList",brandList);
        return "admin/brand/main";
    }
}
