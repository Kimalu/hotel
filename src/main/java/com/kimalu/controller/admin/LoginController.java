package com.kimalu.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kimalu.controller.BaseController;
import com.kimalu.service.UserService;

@Controller
@RequestMapping("/login")
public class LoginController extends BaseController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/doLogin",method=RequestMethod.POST)
	public String doLogin(String userName,String password, ModelMap modelMap){
		return "admin/main";
	}
}
