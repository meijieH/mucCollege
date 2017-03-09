package com.mucCollege.dao;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Testpaper;
@Service @Transactional

public class TestpaperDao {

		@Resource SessionFactory factory;
			public Testpaper getTestpaperById(Integer id) throws Exception{
		Session s = factory.getCurrentSession();
		Testpaper testpaper=(Testpaper) s.get(Testpaper.class, id);
		return testpaper;
	}
		/*增*/
		public void addTestpaper(Testpaper testpaper) throws Exception{
			Session s = factory.getCurrentSession();
			s.save(testpaper);
		}
		
		/*删*/
		public void deleteTestpaper(Integer testpaperid)throws Exception{
		    Session s = factory.getCurrentSession();
			Object testpaper = s.load(Testpaper.class, testpaperid);
			s.delete(testpaper);
		}		
		/*改*/
		public void updateTestpaper(Testpaper testpaper)throws Exception{
			Session s = factory.getCurrentSession();
			s.update(testpaper);
		}		
		/*查所有*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Testpaper> QueryAllTestpaperInfo() {
	        Session s = factory.getCurrentSession();
	        String hql = "From Testpaper";   
	        Query q = s.createQuery(hql);
	        List testpaperList = q.list();
	        return (ArrayList<Testpaper>) testpaperList;
	    }				
		/*根据组的卷的名称条件查*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Testpaper> QueryTestpaperByName(String testpapername) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Testpaper testpaper where 1=1";
	    	if(!testpapername.equals("")) hql = hql + " and testpaper.testpapername like '%" + testpapername + "%'";
	    	Query q = s.createQuery(hql);
	    	List testpaperList = q.list();
	    	return (ArrayList<Testpaper>) testpaperList;
	    }
        //根据创建者查
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Testpaper> QueryTestpaperByCreator(Integer creatorid) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Testpaper testpaper where 1=1";
	    	hql = hql + " and testpaper.user.userid =" + creatorid;
	    	Query q = s.createQuery(hql);
	    	List testpaperList = q.list();
	    	return (ArrayList<Testpaper>) testpaperList;
	    }
}
