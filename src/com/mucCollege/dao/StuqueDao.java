package com.mucCollege.dao;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Stupaper;
import com.mucCollege.model.Stuque;
import com.mucCollege.model.Testque;
@Service @Transactional

public class StuqueDao {

		@Resource SessionFactory factory;
		
		/*增*/
		public void addStuque(Stuque stuque) throws Exception{
			Session s = factory.getCurrentSession();
			s.save(stuque);
		}
		
		/*删*/
		public void deleteStuque(Integer stuqueid)throws Exception{
		    Session s = factory.getCurrentSession();
			Object stuque = s.load(Stuque.class, stuqueid);
			s.delete(stuque);
		}
		
		/*改*/
		public void updateStuque(Stuque stuque)throws Exception{
			Session s = factory.getCurrentSession();
			s.update(stuque);
		}
		
		/*查所有*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Stuque> QueryAllStuqueInfo() {
	        Session s = factory.getCurrentSession();
	        String hql = "From Stuque";   
	        Query q = s.createQuery(hql);
	        List stuqueList = q.list();
	        return (ArrayList<Stuque>) stuqueList;
	    }		
		/*根据主键查*/
		public Stuque GetStuqueById(Integer stuqueid) {
	        Session s = factory.getCurrentSession();
	        Stuque stuque = (Stuque)s.get(Stuque.class, stuqueid);
	        return stuque;
	    }		
		/*根据学生考卷条件查*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Stuque> QueryStuqueByStupaper(Stupaper stupaper) { 
			Session s = factory.getCurrentSession();
	    	String hql = "From Stuque stuque where 1=1";
	    	if(null!=stupaper && stupaper.getStupaperid()!=0) 
	    		hql = hql + " and stuque.stupaper.stupaperid like '%" + stupaper.getStupaperid() + "%'";
	    	Query q = s.createQuery(hql);
	    	List stuqueList = q.list();
	    	return (ArrayList<Stuque>) stuqueList;
		}
        //根据组卷的题目查
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Stuque> QueryStuqueByTestque(Testque testque) { 
			Session s = factory.getCurrentSession();
	    	String hql = "From Stuque stuque where 1=1";
	    	if(null!=testque && testque.getTestquesid()!=0) 
	    		hql = hql + " and stuque.testque.testqueid like '%" + testque.getTestquesid() + "%'";
	    	Query q = s.createQuery(hql);
	    	List stuqueList = q.list();
	    	return (ArrayList<Stuque>) stuqueList;
	    }
}
