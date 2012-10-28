package com.kimalu.dao;

import org.springframework.stereotype.Repository;

import com.kimalu.domain.Order;

import java.util.List;

@Repository
public class OrderDAO extends BaseDAO<Order> {

    public List<Order> getAllOutstandingOrderList() {
        StringBuffer hql=new StringBuffer(" from Order o where o.isFinished =?");
        return  this.getList(hql.toString(),false);
    }
}