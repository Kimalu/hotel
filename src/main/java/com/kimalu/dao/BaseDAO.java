package com.kimalu.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.*;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.util.Assert;

public class BaseDAO<T> {
	@Autowired
	protected SessionFactory sf;
	@Autowired
	protected HibernateTemplate hibernateTemplate;

	protected Class<T> entityClass;
	
	public BaseDAO() {
		Type genType = getClass().getGenericSuperclass();
		Type[] params = ((ParameterizedType) genType).getActualTypeArguments();
		entityClass = (Class) params[0];
	}

	public SessionFactory getSf() {
		return sf;
	}

	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public Session getSession() {
		return sf.getCurrentSession();
	}
//增+++++++++++++++++start

    //persist jEE的标准
    public void persist(T t){
        hibernateTemplate.persist(t);
    }

    public void persist(List<T> t){
        for (Iterator<T> iterator = t.iterator(); iterator.hasNext(); ) {
            T entity =  iterator.next();
            this.persist(entity);
        }
    }


	public Serializable save(T t) {
		return hibernateTemplate.save(t);
	}

	public List<Serializable> saveList(List<T> list) {
		List<Serializable> idList = new ArrayList<Serializable>();
		for (Iterator<T> iterator = list.iterator(); iterator.hasNext();) {
			T entity =  iterator.next();
			idList.add(this.save(entity));
		}
		return idList;
	}
//增-------------end



    //删++++++++++++++++start
	public void delete(T t) {
		hibernateTemplate.delete(t);
	}

    public void deleteList(List<T> list){
        for (Iterator<T> iterator = list.iterator(); iterator.hasNext(); ) {
            T entity =  iterator.next();
            this.delete(entity);
        }
    }
  //删-------------------end



    //查++++++++++++++++++++start
	public T getEntityById(Serializable id) {
		return hibernateTemplate.get(entityClass, id);
	}

    public List<T> getEntityByIds(List<Serializable> idList){
        return this.getEntityByIds((Serializable[])idList.toArray());
    }

    public List<T> getEntityByIds(Serializable... ids){
       return  this.createCriteria(Restrictions.in("id",ids)).list();
    }
   //查---------------------------end

    //改++++++++++++++++++start
	public void update(T t) {
		hibernateTemplate.update(t);
	}
    public void saveOrUpdate(T t){
        hibernateTemplate.saveOrUpdate(t);
    }
    //改-----------------------end


	public void evict(T t) {
		this.getSession().evict(t);
	}
    //getUnique+++++++++++++++++++++++++++start
    public T getUnique(final Criterion... criterions) {
        return this.getUnique(createCriteria(criterions));
    }

    public T getUnique(final Criteria criteria){
       return (T) criteria.uniqueResult();
    }

    public T getUnique(final String hql, final Map<String, Object> values) {
        Assert.hasText(hql, "queryString不能为空");
        return (T) createQuery(hql, values).uniqueResult();
    }
    public T getUnique(String hql,Object...values ){
        Assert.hasText(hql, "queryString不能为空");
        Query query =createQuery(hql,values);
        return (T) query.uniqueResult();
    }
    //getUnique-------------------------------end

    public List<T> getList(String hql,List values ){
        return (List<T>)this.getList(hql,values.toArray());
    }
	
	public List<T> getList(String hql,Object... values ){
        Assert.hasText(hql, "queryString不能为空");
        Query query =createQuery(hql,values);
        return (List<T>) query.list();
    }
    public List<T> getList(final Criterion... criterions){
        return createCriteria(criterions).list();
    }



	//createQuery++++++++++++++++++++++start
	public Query createQuery(final String queryString, final Object... values) {
        Query query = getSession().createQuery(queryString);
        if (values != null) {
            for (int i = 0; i < values.length; i++) {
                query.setParameter(i, values[i]);
            }
        }
        return query;
    }

    public Query createQuery(final String queryString, Map<String, Object> namedParamMap) {
        Assert.hasText(queryString, "queryString不能为空");
        Query query = getSession().createQuery(queryString);
        if (namedParamMap != null) {
            for (String key : namedParamMap.keySet()) {
                applyNamedParameterToQuery(query, key, namedParamMap.get(key));
            }
        }
        return query;
    }

    private void applyNamedParameterToQuery(Query queryObject, String paramName, Object value) throws HibernateException {
        if (value instanceof Collection) {
            queryObject.setParameterList(paramName, (Collection) value);
        } else if (value instanceof Object[]) {
            queryObject.setParameterList(paramName, (Object[]) value);
        } else {
            queryObject.setParameter(paramName, value);
        }
    }
    //createQuery-----------------------------------end


   //  createCriteria+++++++++++++++++++++++++++++start
    public Criteria createCriteria(final Criterion... criterions) {
        Criteria criteria = getSession().createCriteria(entityClass);
        for (Criterion c : criterions) {
            criteria.add(c);
        }
        return criteria;
    }
    //createCriteria--------------------------------end

    //init lazy collection++++++++++++++++++++++++++start
    public void initCollection(Collection collection) {
        if (!Hibernate.isInitialized(collection)) {
            Hibernate.initialize(collection);
        }
    }
    // init lazy collection---------------------------end
}
