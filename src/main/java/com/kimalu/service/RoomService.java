package com.kimalu.service;

import com.kimalu.domain.Room;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kimalu.dao.RoomDAO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;

@Service
public class RoomService/* extends BaseService<Room>*/ {

	@Autowired
	private RoomDAO roomDAO;

	public RoomDAO getRoomDAO() {
		return roomDAO;
	}

	public void setRoomDAO(RoomDAO roomDAO) {
		this.roomDAO = roomDAO;
	}
    @Transactional
    public Serializable save(Room t) {
        return roomDAO.save(t);
    }
	

}
