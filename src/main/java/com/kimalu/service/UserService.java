package com.kimalu.service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.kimalu.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kimalu.dao.UserDAO;

@Service
public class UserService /*extends BaseService<City>*/{
	@Autowired
	private UserDAO userDAO;

	@Transactional
	public Serializable save(User t) {
		return userDAO.save(t);
	}
	
	@Transactional
	public List<Serializable> saveList(List<User> list) {
		List<Serializable> idList = new ArrayList<Serializable>();
		for (Iterator<User> iterator = list.iterator(); iterator.hasNext();) {
			User entity = (User) iterator.next();
			idList.add(userDAO.save(entity));
		}
		return idList;
	}
	
	@Transactional
	public void del(User t) {
		userDAO.del(t);
	}
	@Transactional
	public User getEntityById(Serializable id) {
		return userDAO.getEntityById(id);
	}
	@Transactional
	public void update(User t) {
		userDAO.update(t);
	}

	
}
