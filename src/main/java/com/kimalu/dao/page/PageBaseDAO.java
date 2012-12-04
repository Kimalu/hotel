package com.kimalu.dao.page;

import com.kimalu.dao.BaseDAO;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Criterion;
import org.springframework.util.Assert;

import java.util.List;
import java.util.Map;

public class PageBaseDAO<T> extends BaseDAO<T> {

    /**
     * 截取用于计算记录集总数的HQL语句的起始保留字“from”
     */
    private static final String START_RESERVE_WORDS = "from";
    /**
     * 计算记录集总数的HQL语法前缀
     */
    private static final String SELECT_COUNT_PREFIX = "select count(*) ";
    /**
     * 截取用于计算记录集总数的HQL语句的起始保留字数组。
     * 由于这些保留字在HQL语句中均为可选，因此要依次判断HQL语句中是否存在这些保留字。如果发现存在
     * 这些保留字中的任何一个（依次），便确定用于计算记录集总数的HQL语句的结束位置；如果未不存在
     * 这些保留字，则结束位置为原HQL的长度。
     */
    private static final String[] END_RESERVE_WORDS = {" group", " having", " order"};

    public Page<T> getPage(Page<T> page) {
        return getPage(page);
    }

    public Page<T> getPage(Page<T> page, Criterion... criterions) {
        Assert.notNull(page, "page不能为空");
        Criteria c = createCriteria(criterions);
        setPageParam(c, page);
        page.setTotalNum(this.getCount(entityClass.getSimpleName()));
        page.setList(c.list());
        return page;
    }
    public Page<T> getPage(Page<T> page,Criteria criteria) {
        Assert.notNull(page, "page不能为空");
        page.setTotalNum(criteria.list().size());
        setPageParam(criteria, page);
        page.setList(criteria.list());
        return page;
    }

    public Page<T> getPage(Page<T> page, String hql) {
        return this.getPage(page, hql);
    }

    public Page<T> getPage(final Page<T> page, final String hql, final List values) {
       return this.getPage(page,hql,values.toArray());
    }

    public Page<T> getPage(final Page<T> page, final String hql, final Object... values) {
        Assert.notNull(page, "page不能为空");

        Query q = createQuery(hql, values);
        setPageParam(q, page);
        List result = q.list();
        int totalCount = calculateRecordCount(hql, values);
        page.setTotalNum(totalCount);
        page.setList(result);
        return page;
    }


    public Page<T> getPage(Page<T> page, String hql, Map<String, Object> paraMap) {
        Assert.notNull(page, "page不能为空");
        Query q = null;
        if (paraMap != null) {
            q = createQuery(hql, paraMap);
        } else {
            q = getSession().createQuery(hql);
        }
        setPageParam(q, page);
        page.setTotalNum(calculateRecordCount(hql, paraMap));
        page.setList(q.list());
        return page;
    }

    protected int calculateRecordCount(final String hql, final Object[] paramValues) {
        String countHql = generateCountStr(hql);
        return uniqueIntResult(countHql, paramValues);
    }

    protected int calculateRecordCount(String hql, Map<String, Object> namedParamMap) {
        String countHql = generateCountStr(hql);
        return uniqueIntResult(countHql, namedParamMap);
    }

    public static String generateCountStr(String hql) {
        String lowerCaseHql = hql.toLowerCase();
        int start = lowerCaseHql.indexOf(START_RESERVE_WORDS);
        int end = hql.length();

        //判断是否包含保留字
        for (String key : END_RESERVE_WORDS) {
            if (lowerCaseHql.indexOf(key) > -1) {
                end = lowerCaseHql.indexOf(key);
                break;
            }
        }

        return SELECT_COUNT_PREFIX + hql.substring(start, end);
    }

    public int uniqueIntResult(String hql, Map<String, Object> namedParamMap) {
        return returnIntValueFromRet(uniqueResult(hql, namedParamMap));
    }

    public int uniqueIntResult(String hql, Object[] paramValues) {
        return returnIntValueFromRet(uniqueResult(hql, paramValues));
    }

    private int returnIntValueFromRet(Object obj) {

        if (obj instanceof Long) {
            Long ret = (Long) obj;
            return (ret == null) ? 0 : ret.intValue();
        }

        if (obj instanceof Integer) {
            Integer ret = (Integer) obj;
            return (ret == null) ? 0 : ret.intValue();
        }

        return 0;
    }

    public Object uniqueResult(final String hql, final Object... paramValues) {
        Query q = createQuery(hql, paramValues);
        return q.uniqueResult();
    }

    public Object uniqueResult(final String hql, final Map paramValues) {
        Query q = createQuery(hql, paramValues);
        return q.uniqueResult();
    }


    private Query setPageParam(Query q, Page<T> page) {
        q.setFirstResult(page.getFirst());
        q.setMaxResults(page.getPageSize());
        return q;
    }

    private Criteria setPageParam(Criteria c, Page<T> page) {
        c.setFirstResult(page.getFirst());
        c.setMaxResults(page.getPageSize());
        return c;
    }


    public long getCount(String entity) {
        String hql = "select count(*) from " + entity;
        long count = (Long) this.getSession().createQuery(hql).uniqueResult();
        return count;
    }

}
