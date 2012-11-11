package com.kimalu.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.kimalu.domain.Province;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext_test.xml")
@TransactionConfiguration(transactionManager="transactionManager", defaultRollback=false)
public class ProvinceServiceTest {
@Autowired
    private ProvinceService provinceService;
	@Test
	public void testSaveProvince(){
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		ProvinceService provinceService=(ProvinceService)context.getBean("provinceService");
		
//		Province p=new Province();
//		p.setName("北京");
//		p.setPinyin("BEIJING");
//		p.setDirectlyGovernedCity(true);
//		p.setHot(true);
//		provinceService.save(p);
//		
//		Province p1=new Province();
//		p1.setName("天津");
//		p1.setPinyin("TIANJIN");
//		p1.setDirectlyGovernedCity(true);
//		p1.setHot(true);
//		provinceService.save(p1);
//		
//		Province p2=new Province();
//		p2.setName("重庆");
//		p2.setPinyin("CHONGQING");
//		p2.setDirectlyGovernedCity(true);
//		p2.setHot(true);
//		provinceService.save(p2);
//		
//		Province p3=new Province();
//		p3.setName("上海");
//		p3.setPinyin("SHANGHAI");
//		p3.setDirectlyGovernedCity(true);
//		p3.setHot(true);
//		provinceService.save(p3);
//		
		
		
		
//		Province p4=new Province();
//		p4.setName("河北");
//		p4.setPinyin("HEBEI");
//		provinceService.save(p4);
//
//		Province p5=new Province();
//		p5.setName("山西");
//		p5.setPinyin("SHANXI");
//		provinceService.save(p5);
//
//		Province p6=new Province();
//		p6.setName("辽宁");
//		p6.setPinyin("LIAONING");
//		provinceService.save(p6);
//
//		Province p7=new Province();
//		p7.setName("吉林");
//		p7.setPinyin("JILIN");
//		provinceService.save(p7);
//
//		Province p8=new Province();
//		p8.setName("黑龙江");
//		p8.setPinyin("HEILONGJIANG");
//		provinceService.save(p8);
//
//		Province p9=new Province();
//		p9.setName("江苏");
//		p9.setPinyin("JIANGSU");
//		provinceService.save(p9);
//
//		Province p10=new Province();
//		p10.setName("浙江");
//		p10.setPinyin("ZHEJIANG");
//		provinceService.save(p10);
//
//		Province p11=new Province();
//		p11.setName("安徽");
//		p11.setPinyin("ANHUI");
//		provinceService.save(p11);
//
//		Province p12=new Province();
//		p12.setName("福建");
//		p12.setPinyin("FUJIAN");
//		provinceService.save(p12);
//
//		Province p123=new Province();
//		p123.setName("江西");
//		p123.setPinyin("JIANGXI");
//		provinceService.save(p123);
//
//		Province p13=new Province();
//		p13.setName("山东");
//		p13.setPinyin("SHANDONG");
//		provinceService.save(p13);
//
//		Province p14=new Province();
//		p14.setName("河南");
//		p14.setPinyin("HENAN");
//		provinceService.save(p14);
//
//		Province p15=new Province();
//		p15.setName("湖北");
//		p15.setPinyin("HUBEI");
//		provinceService.save(p15);
//
//		Province p16=new Province();
//		p16.setName("湖南");
//		p16.setPinyin("HUNAN");
//		provinceService.save(p16);
//
//		Province p17=new Province();
//		p17.setName("广东");
//		p17.setPinyin("GUANGDONG");
//		provinceService.save(p17);
//
//		Province p18=new Province();
//		p18.setName("海南");
//		p18.setPinyin("HAINAN");
//		provinceService.save(p18);
//
//		Province p19=new Province();
//		p19.setName("四川");
//		p19.setPinyin("SICHUAN");
//		provinceService.save(p19);
//
//		Province p20=new Province();
//		p20.setName("贵州");
//		p20.setPinyin("GUIZHOU");
//		provinceService.save(p20);
//
//		Province p21=new Province();
//		p21.setName("云南");
//		p21.setPinyin("YUNNAN");
//		provinceService.save(p21);
//
//		Province p22=new Province();
//		p22.setName("陕西");
//		p22.setPinyin("SHANXI");
//		provinceService.save(p22);
//
//		Province p23=new Province();
//		p23.setName("甘肃");
//		p23.setPinyin("GANSU");
//		provinceService.save(p23);
//
//		Province p24=new Province();
//		p24.setName("青海");
//		p24.setPinyin("QINGHAI");
//		provinceService.save(p24);
//
//		Province p25=new Province();
//		p25.setName("台湾");
//		p25.setPinyin("TAIWAN");
//		provinceService.save(p25);
//
//
//
//		Province p26=new Province();
//		p26.setName("内蒙古");
//		p26.setPinyin("NEIMENGGU");
//		p26.setAutonomousRegion(true);
//		provinceService.save(p26);
//
//		Province p27=new Province();
//		p27.setName("广西壮族");
//		p27.setPinyin("GUANGXIZHUANGZU");
//		p27.setAutonomousRegion(true);
//		provinceService.save(p27);
//
//		Province p277=new Province();
//		p277.setName("宁夏回族");
//		p277.setPinyin("NINGXIAHUIZU");
//		p277.setAutonomousRegion(true);
//		provinceService.save(p277);
//
//		Province p278=new Province();
//		p278.setName("新疆维吾尔");
//		p278.setPinyin("XINJIANGWEIWUER");
//		p278.setAutonomousRegion(true);
//		provinceService.save(p278);
//
//		Province p28=new Province();
//		p28.setName("西藏");
//		p28.setPinyin("XIZANG");
//		p28.setAutonomousRegion(true);
//		provinceService.save(p28);
//
//
//
//
//		Province p29=new Province();
//		p29.setName("香港");
//		p29.setPinyin("XIANGGANG");
//		p29.setSpecialAdministrativeRegion(true);
//		provinceService.save(p29);
//
//		Province p30=new Province();
//		p30.setName("澳门");
//		p30.setPinyin("AOMEN");
//		p30.setSpecialAdministrativeRegion(true);
//		provinceService.save(p30);
	}
     @Test
    public  void testUnique(){
     Province province= provinceService.getUniqueNameChs("福建");
    }

}
