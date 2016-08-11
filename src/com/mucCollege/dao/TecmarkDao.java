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
import com.mucCollege.model.Tecmark;
@Service @Transactional

public class TecmarkDao {

		@Resource SessionFactory factory;
		
		/*增*/
		public void addCourse(Tecmark tecmark) throws Exception{
			Session s = factory.getCurrentSession();
			s.save(tecmark);
		}
		
		/*删*/
		public void deleteTecmark(Integer tecmarkid)throws Exception{
		    Session s = factory.getCurrentSession();
			Object tecmark = s.load(Tecmark.class, tecmarkid);
			s.delete(tecmark);
		}
		
		/*改*/
		public void updateTecmark(Tecmark tecmark)throws Exception{
			Session s = factory.getCurrentSession();
			s.update(tecmark);
		}
		
		/*查所有*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Tecmark> QueryAllTecmarkInfo() {
	        Session s = factory.getCurrentSession();
	        String hql = "From Tecmark";   
	        Query q = s.createQuery(hql);
	        List tecmarkList = q.list();
	        return (ArrayList<Tecmark>) tecmarkList;
	    }
		
		/*根据主键查*/
		public Tecmark GetTecmarkById(Integer tecmarkid) {
	        Session s = factory.getCurrentSession();
	        Tecmark tecmark = (Tecmark)s.get(Tecmark.class, tecmarkid);
	        return tecmark;
	    }
//		根据老师的评论查找
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Tecmark> QueryTecmarkByComment(String comment) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Tecmark tecmark where 1=1";
	    	if(!comment.equals("")) hql = hql + " and tecmark.comment like '%" + comment + "%'";
	    	Query q = s.createQuery(hql);
	    	List tecmarkList = q.list();
	    	return (ArrayList<Tecmark>) tecmarkList;
	    }
		
		/*根据学生试题查*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Tecmark> QueryTecmarkByStuque(Stuque stuque) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Tecmark tecmark where 1=1";
	    	if(null!=stuque && stuque.getStuqueid()!=0) 
	    		hql = hql + " and tecmark.sutque.stuqueid like '%" + stuque.getStuqueid() + "%'";
	    	Query q = s.createQuery(hql);
	    	List tecmarkList = q.list();
	    	return (ArrayList<Tecmark>) tecmarkList;
	    }
		

}
