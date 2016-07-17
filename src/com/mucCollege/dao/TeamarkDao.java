package com.mucCollege.dao;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Stuque;
import com.mucCollege.model.Teacher;
import com.mucCollege.model.Teamark;
@Service @Transactional

public class TeamarkDao {

		@Resource SessionFactory factory;
		
		/*增*/
		public void addTeamark(Teamark teamark) throws Exception{
			Session s = factory.getCurrentSession();
			s.save(teamark);
		}
		
		/*删*/
		public void deleteTeamark(Integer teamarkid)throws Exception{
		    Session s = factory.getCurrentSession();
			Object teamark = s.load(Teamark.class, teamarkid);
			s.delete(teamark);
		}
		
		/*改*/
		public void updateTeamark(Teamark teamark)throws Exception{
			Session s = factory.getCurrentSession();
			s.update(teamark);
		}
		
		/*查所有*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Teamark> QueryAllTeamarkInfo() {
	        Session s = factory.getCurrentSession();
	        String hql = "From Teamark";   
	        Query q = s.createQuery(hql);
	        List teamarkList = q.list();
	        return (ArrayList<Teamark>) teamarkList;
	    }
		
		/*根据主键查*/
		public Teamark GetTeamarkById(Integer teamarkid) {
	        Session s = factory.getCurrentSession();
	        Teamark teamark = (Teamark)s.get(Teamark.class, teamarkid);
	        return teamark;
	    }
        //根据老师的评论查找
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Teamark> QueryTeamarkByComment(String comment) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Teamark teamark where 1=1";
	    	if(!comment.equals("")) hql = hql + " and teamark.comment like '%" + comment + "%'";
	    	Query q = s.createQuery(hql);
	    	List teamarkList = q.list();
	    	return (ArrayList<Teamark>) teamarkList;
	    }
		
		/*根据学生试题查*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Teamark> QueryTeamarkByStuque(Stuque stuque) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Teamark teamark where 1=1";
	    	if(null!=stuque && stuque.getStuqueid()!=0) 
	    		hql = hql + " and teamark.stuque.stuqueid like '%" + stuque.getStuqueid() + "%'";
	    	Query q = s.createQuery(hql);
	    	List teamarkList = q.list();
	    	return (ArrayList<Teamark>) teamarkList;
	    }
}
