package com.kimalu.controller;

import java.io.IOException;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kimalu.domain.Order;
import com.kimalu.service.OrderService;

@Controller
@RequestMapping("/order")
public class HotelController extends BaseController {
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value="/outstandingList",method=RequestMethod.GET)
	public String outstandingList(ModelMap modelMap) throws JsonGenerationException, JsonMappingException, IOException{
		List<Order> allOutstandingOrderList=orderService.getAllOutstandingOrderList();
		modelMap.addAttribute("list", allOutstandingOrderList);
		return "admin/order/order_maint";
	}
}
