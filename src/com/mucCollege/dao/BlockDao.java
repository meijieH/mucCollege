package com.mucCollege.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.mucCollege.model.Block;
import com.mucCollege.model.Testpaper;
import com.mucCollege.model.Testque;

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
	/*根据组卷中的题目查*/
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Block> QueryBlockByTestpaper(Testpaper testpaper) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From Block block where 1=1";
    	if(null!=testpaper && testpaper.getTestpaperid()!=0) 
    		hql = hql + " and testque.testpaper.testpaperid like '%" + testpaper.getTestpaperid() + "%'";
    	Query q = s.createQuery(hql);
    	ArrayList<Block> result=(ArrayList<Block>) q.list();
    	return result;
    }
}