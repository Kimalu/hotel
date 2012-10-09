package com.kimalu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kimalu.dao.HotelDAO;
@Service
public class HotelService /*extends BaseService<Hotel>*/{
	@Autowired
	private HotelDAO hotelDAO;

	HotelDAO getHotelDAO() {
		return hotelDAO;
	}

	void setHotelDAO(HotelDAO hotelDAO) {
		this.hotelDAO = hotelDAO;
	}

}
