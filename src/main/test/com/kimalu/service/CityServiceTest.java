package com.kimalu.service;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.kimalu.domain.City;
import com.kimalu.domain.Province;

public class CityServiceTest {
	@Test
	public void testSaveProvince(){
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		CityService cityService=(CityService)context.getBean("cityService");
		
		City c1=new City();
		c1.setName("北京");
		c1.setPinyin("BEIJING");
		c1.setDirectlyGovernedCity(true);
		c1.setHot(true);
		c1.setProvince(null);
		
		City c2=new City();
		c2.setName("天津");
		c2.setPinyin("TIANJIN");
		c2.setDirectlyGovernedCity(true);
		c2.setHot(true);
		c2.setProvince(null);
		
		City c3=new City();
		c3.setName("上海");
		c3.setPinyin("SHANGHAI");
		c3.setDirectlyGovernedCity(true);
		c3.setHot(true);
		c3.setProvince(null);
		
		City c4=new City();
		c4.setName("重庆");
		c4.setPinyin("CHONGQING");
		c4.setDirectlyGovernedCity(true);
		c4.setHot(true);
		c4.setProvince(null);
		
		ProvinceService ps=(ProvinceService)context.getBean("provinceService");
		Province p=ps.getProvinceByName("河北");

		City c5=new City();
		c5.setName("石家庄");
		c5.setPinyin("SHIJIAZHUANG");
		c5.setProvince(p);
		
		City c6=new City();
		c6.setName("保定");
		c6.setPinyin("BAODING");
		c6.setProvince(p);
		
		
		
		
	}

}
