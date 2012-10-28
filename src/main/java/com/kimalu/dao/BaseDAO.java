package com.kimalu.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.util.Assert;

public class BaseDAO<T> {
	@Autowired
	protected SessionFactory sf;
	@Autowired
	protected HibernateTemplate hibernateTemplate;

	protected Class<T> entityClass;
	
	@SuppressWarnings("unchecked")
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

	public Serializable save(T t) {
		return hibernateTemplate.save(t);
	}

	public List<Serializable> saveList(List<T> list) {
		List<Serializable> idList = new ArrayList<Serializable>();
		for (Iterator<T> iterator = list.iterator(); iterator.hasNext();) {
			T entity = (T) iterator.next();
			idList.add(this.save(entity));
		}
		return idList;
	}

	public void del(T t) {
		hibernateTemplate.delete(t);
	}

	public T getEntityById(Serializable id) {
		return hibernateTemplate.get(entityClass, id);
	}

	public void update(T t) {
		hibernateTemplate.update(t);
	}

	public void evict(T t) {
		this.getSession().evict(t);
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
	
	public List<T> getList(String hql,Object... values ){
        Assert.hasText(hql, "queryString不能为空");
        Query query =createQuery(hql,values);
        return (List<T>) query.list();
    }

    public List<T> getList(String hql,List values ){
        return (List<T>)this.getList(hql,values.toArray());
    }
	
	public T getUnique(String hql,Object...values ){
		Assert.hasText(hql, "queryString不能为空");
		Query query =createQuery(hql,values);
		return (T) query.uniqueResult();
	}
	
	private Query createQuery(final String queryString, final Object... values) {
        Query query = getSession().createQuery(queryString);
        if (values != null) {
            for (int i = 0; i < values.length; i++) {
                query.setParameter(i, values[i]);
            }
        }
        return query;
    }
}
