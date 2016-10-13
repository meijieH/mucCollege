package com.mucCollege.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.mucCollege.model.Block;
import com.mucCollege.model.Group;

@Repository
public class GroupDao {
	@Resource SessionFactory factory;
	public List<Group> queryGroupByBlockid(Integer id){
		Session s = factory.getCurrentSession();
    	String hql = "From Group group where group.block.blockid like '%" + id + "%'";
    	Query q = s.createQuery(hql);
    	@SuppressWarnings("unchecked")
		List<Group> result=(List<Group>) q.list();
    	return  result;
	}
}