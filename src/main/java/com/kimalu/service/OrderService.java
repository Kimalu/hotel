package com.kimalu.service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kimalu.dao.OrderDAO;
import com.kimalu.domain.Order;

@Service
public class OrderService /*extends BaseService<Order>*/ {
    @Autowired
    private OrderDAO orderDAO;


    @Transactional
    public Serializable save(Order t) {
        return orderDAO.save(t);
    }

    @Transactional
    public List<Serializable> saveList(List<Order> list) {
        List<Serializable> idList = new ArrayList<Serializable>();
        for (Iterator<Order> iterator = list.iterator(); iterator.hasNext(); ) {
            Order entity = (Order) iterator.next();
            idList.add(orderDAO.save(entity));
        }
        return idList;
    }

    @Transactional
    public void del(Order t) {
        orderDAO.del(t);
    }

    @Transactional
    public Order getEntityById(Serializable id) {
        return orderDAO.getEntityById(id);
    }

    @Transactional
    public void update(Order t) {
        orderDAO.update(t);
    }

    @Transactional
    public List<Order> getAllOutstandingOrderList() {
        return orderDAO.getAllOutstandingOrderList();
    }


}
