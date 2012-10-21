package com.kimalu.service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kimalu.dao.CityDAO;
import com.kimalu.dao.UserDAO;
import com.kimalu.domain.AdminUser;

@Service
public class UserService /*extends BaseService<City>*/{
	@Autowired
	private UserDAO userDAO;

	@Transactional
	public Serializable save(AdminUser t) {
		return userDAO.save(t);
	}
	
	@Transactional
	public List<Serializable> saveList(List<AdminUser> list) {
		List<Serializable> idList = new ArrayList<Serializable>();
		for (Iterator<AdminUser> iterator = list.iterator(); iterator.hasNext();) {
			AdminUser entity = (AdminUser) iterator.next();
			idList.add(userDAO.save(entity));
		}
		return idList;
	}
	
	@Transactional
	public void del(AdminUser t) {
		userDAO.del(t);
	}
	@Transactional
	public AdminUser getEntityById(Serializable id) {
		return userDAO.getEntityById(id);
	}
	@Transactional
	public void update(AdminUser t) {
		userDAO.update(t);
	}

	
}
