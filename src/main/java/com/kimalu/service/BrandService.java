package com.kimalu.service;

import com.kimalu.dao.BrandDAO;
import com.kimalu.domain.Brand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Kimalu
 * Date: 12-10-27
 * Time: 上午9:59
 * To change this template use File | Settings | File Templates.
 */
@Service
public class BrandService {
    @Autowired
    private BrandDAO brandDAO;
    BrandDAO getBrandDAO() {
        return brandDAO;
    }

    void setBrandDAO(BrandDAO brandDAO) {
        this.brandDAO = brandDAO;
    }

    @Transactional
    public Serializable save(Brand t) {
        return brandDAO.save(t);
    }

    @Transactional
    public Brand getUniqueNameChs(String chs){
        return brandDAO.getUniqueNameChs(chs);
    }
    @Transactional
    public List<Brand> getAllBrand() {
        return brandDAO.getList();
    }
}
