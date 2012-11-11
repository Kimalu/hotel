package com.kimalu.dao;

import com.kimalu.domain.City;
import com.kimalu.domain.Province;
import com.kimalu.domain.i18n.Name;
import com.kimalu.service.ProvinceService;
import org.hibernate.criterion.Restrictions;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;

/**
 * Created with IntelliJ IDEA.
 * User: Kimalu
 * Date: 12-11-10
 * Time: 上午11:47
 * 版权归作者Kimalu所有，未经许可不得盗用，违者必究！
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext_test.xml")
@TransactionConfiguration(transactionManager="transactionManager", defaultRollback=false)
public class CityDAOTest {
    @Autowired
     private  CityDAO cityDAO;
 @Autowired
   private ProvinceDAO provinceDAO;
        @Autowired
   private ProvinceService provinceService;
    @Test
    public void testSave(){
        Name name=new Name();
        name.setChs("泉州");
        City city=new City();
        city.setName(name);
        city.setDirectlyGovernedCity(false);
        city.setHot(true);
//        city.setProvince(provinceDAO.getEntityById("402881963aea6365013aea636ccc0000"));
    city.setProvince(provinceService.getUniqueNameChs("福建"));
//        city.setProvince(provinceDAO.getUniqueNameChs("福建"));   TODO 加Transactional标签 有异常，还没有搞清楚
        cityDAO.save(city);
    }
}
