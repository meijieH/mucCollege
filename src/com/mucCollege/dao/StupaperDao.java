package com.mucCollege.dao;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Student;
import com.mucCollege.model.Stupaper;
import com.mucCollege.model.Test;
@Service @Transactional
public class StupaperDao {
		@Resource SessionFactory factory;		
		/*增*/
		public void addStupaper(Stupaper stupaper) throws Exception{
			Session s = factory.getCurrentSession();
			s.save(stupaper);
		}		
		/*删*/
		public void deleteStupaper(Integer stupaperid)throws Exception{
		    Session s = factory.getCurrentSession();
			Object stupaper = s.load(Stupaper.class, stupaperid);
			s.delete(stupaper);
		}		
		/*改*/
		public void updateStupaper(Stupaper stupaper)throws Exception{
			Session s = factory.getCurrentSession();
			s.update(stupaper);
		}		
		/*查所有*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Stupaper> QueryAllStupaperInfo() {
	        Session s = factory.getCurrentSession();
	        String hql = "From Stupaper";   
	        Query q = s.createQuery(hql);
	        List stupaperList = q.list();
	        return (ArrayList<Stupaper>) stupaperList;
	    }		
		/*根据主键查*/
		public Stupaper GetStupaperById(Integer stupaperid) {
	        Session s = factory.getCurrentSession();
	        Stupaper stupaper = (Stupaper)s.get(Stupaper.class, stupaperid);
	        return stupaper;
	    }		
		/*根据学生查*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Stupaper> QueryStupaperByStudent(Student student) { 
			Session s = factory.getCurrentSession();
	    	String hql = "From Stupaper stupaper where 1=1";
	    	if(null!=student && student.getStudentid()!=0) 
	    		hql = hql + " and stupaper.student.studentid like '%" + student.getStudentid() + "%'";
	    	Query q = s.createQuery(hql);
	    	List stupaperList = q.list();
	    	return (ArrayList<Stupaper>) stupaperList;
		}
        /*根据考试查*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Stupaper> QueryStupaperByTest(Test test) { 
			Session s = factory.getCurrentSession();
	    	String hql = "From Stupaper stupaper where 1=1";
	    	if(null!=test && test.getTestid()!=0) 
	    		hql = hql + " and stupaper.test.testid like '%" + test.getTestid() + "%'";
	    	Query q = s.createQuery(hql);
	    	List stupaperList = q.list();
	    	return (ArrayList<Stupaper>) stupaperList;
	    }
}
