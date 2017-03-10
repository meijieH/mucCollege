package com.mucCollege.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.mucCollege.model.Block;
import com.mucCollege.model.Question;
import com.mucCollege.model.Testpaper;
import com.mucCollege.model.Testque;

@Repository
public class BlockDao {
	@Resource SessionFactory factory;
	public ArrayList<Block> queryBlockByTestpaperid(Integer id){
		Session s = factory.getCurrentSession();
    	String hql = "From Block block where block.testpaper.testpaperid =" + id;
    	Query q = s.createQuery(hql);
    	@SuppressWarnings("unchecked")
		ArrayList<Block> result=(ArrayList<Block>) q.list();
    	return  result;
	}
	public Block queryBlockById(Integer blockid) {
		Session s = factory.getCurrentSession();
		Block block=(Block) s.get(Block.class,blockid);
		return block;
	}

}