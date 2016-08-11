package com.mucCollege.dao;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Question;
import com.mucCollege.model.Testpaper;
import com.mucCollege.model.Testque;
@Service @Transactional

public class TestqueDao {

		@Resource SessionFactory factory;
		
		/*增*/
		public void addTestque(Testque testque) throws Exception{
			Session s = factory.getCurrentSession();
			s.save(testque);
		}
		
		/*删*/
		public void deleteTestque(Integer testquesid)throws Exception{
		    Session s = factory.getCurrentSession();
			Object testque = s.load(Testque.class, testquesid);
			s.delete(testque);
		}
		
		/*改*/
		public void updateTestque(Testque testque)throws Exception{
			Session s = factory.getCurrentSession();
			s.update(testque);
		}
		
		/*查所有*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Testque> QueryAllTestqueInfo() {
	        Session s = factory.getCurrentSession();
	        String hql = "From Testque";   
	        Query q = s.createQuery(hql);
	        List testqueList = q.list();
	        return (ArrayList<Testque>) testqueList;
	    }
		
		/*根据主键查*/
		public Testque GetTestqueById(Integer testquesid) {
	        Session s = factory.getCurrentSession();
	        Testque testque = (Testque)s.get(Testque.class, testquesid);
	        return testque;
	    }
		
		/*根据组卷中的题目查*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Testque> QueryTestqueByTestpaper(Testpaper testpaper) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Testque testque where 1=1";
	    	if(null!=testpaper && testpaper.getTestpaperid()!=0) 
	    		hql = hql + " and testque.testpaper.testpaperid like '%" + testpaper.getTestpaperid() + "%'";
	    	Query q = s.createQuery(hql);
	    	List testqueList = q.list();
	    	return (ArrayList<Testque>) testqueList;
	    }
//		根据题库中的题查
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Testque> QueryTestqueByQuestion(Question question) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Testque testque where 1=1";
	    	if(null!=question && question.getQuestionid()!=0) 
	    		hql = hql + " and testque.testpaper.questionid like '%" + question.getQuestionid() + "%'";
	    	Query q = s.createQuery(hql);
	    	List testqueList = q.list();
	    	return (ArrayList<Testque>) testqueList;
	    }
}