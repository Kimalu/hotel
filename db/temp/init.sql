insert into name values('402898d73af46508013af4657ef10003','福建','fujian','fujian','fujian');
insert into province (id,isautonomousregion,ishot,isspecialadministrativeregion,name_id) values ('402898d73a533b98013a533b9ee30008','false','false','false','402898d73af46508013af4657ef10003');

insert into name values('402898d73af46508013af4657ef10004','厦门','xiamen','xiamen','xiamen');
insert into city (id,ishot,isdirectlygovernedcity,name_id,province_id)values('402898d73a534aac013a534ab35d0099','false','false','402898d73af46508013af4657ef10004','402898d73a533b98013a533b9ee30008');

insert into name values('402898d73af46508013af4657ef10005','泉州','quanzhou','quanzhou','quanzhou');
insert into city (id,ishot,isdirectlygovernedcity,name_id,province_id)values('402898d73a534aac013a534ab35d0103','false','false','402898d73af46508013af4657ef10005','402898d73a533b98013a533b9ee30008');

insert into name values('402898d73af46508013af4657ef10006','思明','siming','siming','siming');
insert into region values('502898d73af46508013af4657ef10005','402898d73a534aac013a534ab35d0099','402898d73af46508013af4657ef10006') ;

insert into name values('402898d73af46508013af4657ef10007','湖里','siming','siming','siming');
insert into region values('502898d73af46508013af4657ef10006','402898d73a534aac013a534ab35d0099','402898d73af46508013af4657ef10007') ;