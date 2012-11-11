package com.kimalu.service;

import com.kimalu.domain.*;
import com.kimalu.domain.enumerate.HouseType;
import com.kimalu.domain.i18n.Name;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;

import java.util.Date;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext_test.xml")
@TransactionConfiguration(transactionManager="transactionManager", defaultRollback=false)
public class RegionServiceTest {
     @Autowired
    private CityService cityService;
    @Autowired
    private RegionService regionService;
    @Test
    public void testSaveRegion() {
         Name name1=new Name();
        name1.setChs("思明");
        City city=cityService.getUniqueNameChs("厦门");
        Region region1=new Region();
        region1.setName(name1);
        region1.setCity(city);

        Name name2=new Name();
        name2.setChs("湖里");
        Region region2=new Region();
        region2.setName(name2);
        region2.setCity(city);

        regionService.save(region1);
        regionService.save(region2);


    }

}
