12:58:39,015 DEBUG SchemaExport:415 - alter table City drop foreign key FK200D8B72ABA55E
12:58:39,216 DEBUG SchemaExport:415 - alter table Region drop foreign key FK91AD13144612297E
12:58:39,434 DEBUG SchemaExport:415 - alter table Room drop foreign key FK26F4FBC0336616
12:58:39,573 DEBUG SchemaExport:415 - alter table region_hotel drop foreign key FKB28E44A912B5B45F
12:58:39,698 DEBUG SchemaExport:415 - alter table region_hotel drop foreign key FKB28E44A93C56C8A7
12:58:39,822 DEBUG SchemaExport:415 - drop table if exists City
12:58:39,842 DEBUG SchemaExport:415 - drop table if exists Hotel
12:58:39,864 DEBUG SchemaExport:415 - drop table if exists Province
12:58:39,893 DEBUG SchemaExport:415 - drop table if exists Region
12:58:39,915 DEBUG SchemaExport:415 - drop table if exists Room
12:58:39,943 DEBUG SchemaExport:415 - drop table if exists region_hotel
12:58:39,966 DEBUG SchemaExport:415 - create table City (id bigint not null auto_increment, isHot bit not null, name varchar(255), province_id bigint, primary key (id))
12:58:40,069 DEBUG SchemaExport:415 - create table Hotel (id bigint not null auto_increment, address varchar(255), introduce varchar(255), level integer not null, name varchar(255), remark varchar(255), tel varchar(255), primary key (id))
12:58:40,131 DEBUG SchemaExport:415 - create table Province (id bigint not null auto_increment, isAutonomousRegion bit not null, isDirectlyGovernedCity bit not null, isHot bit not null, isSspecialAdministrativeRegion bit not null, name varchar(255), primary key (id))
12:58:40,192 DEBUG SchemaExport:415 - create table Region (id bigint not null auto_increment, name varchar(255), city_id bigint, primary key (id))
12:58:40,247 DEBUG SchemaExport:415 - create table Room (id bigint not null auto_increment, bedAmount integer not null, extemporePrice float not null, faceSea bit not null, haveWindow bit not null, houseType integer not null, isSupplyBreakFast bit not null, nowPrice float not null, roomNo varchar(255) not null, singleOrDouble bit not null, hotel_id bigint, primary key (id))
12:58:40,318 DEBUG SchemaExport:415 - create table region_hotel (regionId bigint not null, hotelId bigint not null, primary key (hotelId, regionId))
12:58:40,381 DEBUG SchemaExport:415 - alter table City add index FK200D8B72ABA55E (province_id), add constraint FK200D8B72ABA55E foreign key (province_id) references Province (id)
12:58:40,623 DEBUG SchemaExport:415 - alter table Region add index FK91AD13144612297E (city_id), add constraint FK91AD13144612297E foreign key (city_id) references City (id)
12:58:40,739 DEBUG SchemaExport:415 - alter table Room add index FK26F4FBC0336616 (hotel_id), add constraint FK26F4FBC0336616 foreign key (hotel_id) references Hotel (id)
12:58:40,864 DEBUG SchemaExport:415 - alter table region_hotel add index FKB28E44A912B5B45F (hotelId), add constraint FKB28E44A912B5B45F foreign key (hotelId) references Hotel (id)
12:58:41,039 DEBUG SchemaExport:415 - alter table region_hotel add index FKB28E44A93C56C8A7 (regionId), add constraint FKB28E44A93C56C8A7 foreign key (regionId) references Region (id)