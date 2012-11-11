package com.kimalu.dao;

import com.kimalu.domain.Brand;
import com.kimalu.domain.i18n.Description;
import com.kimalu.domain.i18n.Name;
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
public class BrandDAOTest {
    @Autowired
     private BrandDAO brandDAO;
    @Test
    public void testSave(){
        Name name=new Name();
        name.setChs("7天连锁酒店");
        Description description=new Description();
        Brand brand=new Brand();
        brand.setDescription(description);
        brand.setName(name);
        brand.setLevel(5.0F);
        brand.setScore(9.4f);
        brandDAO.save(brand);
    }
}
