11:15:23,615 DEBUG SchemaExport:415 - alter table City drop constraint FK200D8B72ABA55E
11:15:23,620 DEBUG SchemaExport:415 - alter table Hotel drop constraint FK42AD19469EAF7DE
11:15:23,622 DEBUG SchemaExport:415 - alter table Hotel drop constraint FK42AD194CF5AB136
11:15:23,623 DEBUG SchemaExport:415 - alter table Region drop constraint FK91AD13144612297E
11:15:23,624 DEBUG SchemaExport:415 - alter table Room drop constraint FK26F4FBC0336616
11:15:23,626 DEBUG SchemaExport:415 - alter table hotel_order drop constraint FK8D289503E020F7B5
11:15:23,627 DEBUG SchemaExport:415 - drop table Brand cascade
11:15:23,629 DEBUG SchemaExport:415 - drop table City cascade
11:15:23,632 DEBUG SchemaExport:415 - drop table Hotel cascade
11:15:23,635 DEBUG SchemaExport:415 - drop table Province cascade
11:15:23,637 DEBUG SchemaExport:415 - drop table Region cascade
11:15:23,640 DEBUG SchemaExport:415 - drop table Room cascade
11:15:23,644 DEBUG SchemaExport:415 - drop table hotel_order cascade
11:15:23,646 DEBUG SchemaExport:415 - drop table hotel_user cascade
11:15:23,648 DEBUG SchemaExport:415 - create table Brand (id varchar(255) not null, discription varchar(255), grade float4 not null, name varchar(255), primary key (id))
11:15:23,730 DEBUG SchemaExport:415 - create table City (id varchar(255) not null, isDirectlyGovernedCity bool not null, isHot bool not null, name varchar(255), pinyin varchar(255), province_id varchar(255), primary key (id))
11:15:23,825 DEBUG SchemaExport:415 - create table Hotel (id varchar(255) not null, address varchar(255), introduce varchar(255), level int4 not null, tel varchar(255), brand_id varchar(255), region_id varchar(255), primary key (id))
11:15:23,928 DEBUG SchemaExport:415 - create table Province (id varchar(255) not null, isAutonomousRegion bool not null, isHot bool not null, isSpecialAdministrativeRegion bool not null, name varchar(255), pinyin varchar(255), primary key (id))
11:15:24,074 DEBUG SchemaExport:415 - create table Region (id varchar(255) not null, name varchar(255), city_id varchar(255), primary key (id))
11:15:24,152 DEBUG SchemaExport:415 - create table Room (id varchar(255) not null, bedAmount int4 not null, count int4 not null, extemporePrice float4 not null, houseType int4 not null, isSupplyBreakFast bool not null, nowPrice float4 not null, roomNo varchar(255), singleOrDouble bool not null, totalCount int4 not null, hotel_id varchar(255), primary key (id))
11:15:24,223 DEBUG SchemaExport:415 - create table hotel_order (id varchar(255) not null, beginDate timestamp, cardCertificateNo varchar(255), createDate timestamp, creditCardBackNo varchar(255), creditCardNo varchar(255), effectMonth int4, effectYear int4, email varchar(255), endDate timestamp, isCreditGuarantee bool not null, isFinished bool not null, orderCount int4 not null, orderNo varchar(255), remark varchar(255), roomId varchar(255), primary key (id))
11:15:24,282 DEBUG SchemaExport:415 - create table hotel_user (id varchar(255) not null, password varchar(255), userName varchar(255), primary key (id))
11:15:24,353 DEBUG SchemaExport:415 - alter table City add constraint FK200D8B72ABA55E foreign key (province_id) references Province
11:15:24,361 DEBUG SchemaExport:415 - alter table Hotel add constraint FK42AD19469EAF7DE foreign key (region_id) references Region
11:15:24,378 DEBUG SchemaExport:415 - alter table Hotel add constraint FK42AD194CF5AB136 foreign key (brand_id) references Brand
11:15:24,384 DEBUG SchemaExport:415 - alter table Region add constraint FK91AD13144612297E foreign key (city_id) references City
11:15:24,389 DEBUG SchemaExport:415 - alter table Room add constraint FK26F4FBC0336616 foreign key (hotel_id) references Hotel
11:15:24,394 DEBUG SchemaExport:415 - alter table hotel_order add constraint FK8D289503E020F7B5 foreign key (roomId) references Room