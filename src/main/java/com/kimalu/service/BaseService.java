package com.kimalu.service;

import java.util.List;

import com.kimalu.dao.BaseDAO;
//@Service
public class BaseService<T> {
	//@Autowired
	private BaseDAO<T> baseDAO;

	public BaseDAO<T> getBaseDAO() {
		return baseDAO;
	}

	public void setBaseDAO(BaseDAO<T> baseDAO) {
		this.baseDAO = baseDAO;
	}
	
	public void save(T t){
		baseDAO.save(t);
	}
	
	public void saveList(List<T> list){
		baseDAO.saveList(list);
	}
	
	public void delete(T t){
		baseDAO.delete(t);
	}
	
}
