package com.mucCollege.dao;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.StuClass;
import com.mucCollege.model.Test;
@Service @Transactional

public class TestDao {

		@Resource SessionFactory factory;		
		/*增*/
		public void addTest(Test test) throws Exception{
			Session s = factory.getCurrentSession();
			s.save(test);
		}	
		/*删*/
		public void deleteTest(Integer testid)throws Exception{
		    Session s = factory.getCurrentSession();
			Object test = s.load(Test.class, testid);
			s.delete(test);
		}		
		/*改*/
		public void updateTest(Test test)throws Exception{
			Session s = factory.getCurrentSession();
			s.update(test);
		}		
		/*查所有*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Test> QueryAllTestInfo() {
	        Session s = factory.getCurrentSession();
	        String hql = "From Test";   
	        Query q = s.createQuery(hql);
	        List testList = q.list();
	        return (ArrayList<Test>) testList;
	    }		
		/*根据主键查*/
		public Test GetTestById(Integer testid) {
	        Session s = factory.getCurrentSession();
	        Test test = (Test)s.get(Test.class, testid);
	        return test;
	    }		
		/*根据考试名称条件查*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Test> QueryTestByTestname(String testname) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Test test where 1=1";
	    	if(!testname.equals("")) hql = hql + " and test.testname like '%" + testname + "%'";
	    	Query q = s.createQuery(hql);
	    	List testList = q.list();
	    	return (ArrayList<Test>) testList;
	    }
		/*根据考试的创建者查*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Test> QueryTestByCreator(String creator) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Test test where 1=1";
	    	if(!creator.equals("")) hql = hql + " and test.creator like '%" + creator + "%'";
	    	Query q = s.createQuery(hql);
	    	List testList = q.list();
	    	return (ArrayList<Test>) testList;
	    }
		/*根据考试的班级class查*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Test> QueryTestByClass(StuClass stuClass) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Test test where 1=1";
	    	if(null!=stuClass && stuClass.getClassid()!=0) 
	    		hql = hql + " and test.class.classid like '%" + stuClass.getClassid() + "%'";
	    	Query q = s.createQuery(hql);
	    	List tecmarkList = q.list();
	    	return (ArrayList<Test>) tecmarkList;
	    }
}
