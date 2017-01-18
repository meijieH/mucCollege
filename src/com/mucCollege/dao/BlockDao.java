package com.mucCollege.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.mucCollege.model.Block;

@Repository
public class BlockDao {
	@Resource SessionFactory factory;
	public List<Block> queryBlockByTestpaperid(Integer id){
		Session s = factory.getCurrentSession();
    	String hql = "From Block block where block.testpaper.testpaperid like '%" + id + "%'";
    	Query q = s.createQuery(hql);
    	@SuppressWarnings("unchecked")
		List<Block> result=(List<Block>) q.list();
    	return  result;
	}
}