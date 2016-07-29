package com.mucCollege.dao;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Coustudent;
import com.mucCollege.model.Teacourse;
import com.mucCollege.model.User;
@Service @Transactional

public class CoustudentDao {

		@Resource SessionFactory factory;
		
		/*增*/
		public void addCoustudent(Coustudent coustudent) throws Exception{
			Session s = factory.getCurrentSession();
			s.save(coustudent);
		}
		
		/*删*/
		public void deleteCoustudent(Integer coustudentid)throws Exception{
		    Session s = factory.getCurrentSession();
			Object coustudent = s.load(Coustudent.class, coustudentid);
			s.delete(coustudent);
		}
		
		/*改*/
		public void updateCoustudent(Coustudent coustudent)throws Exception{
			Session s = factory.getCurrentSession();
			s.update(coustudent);
		}
		
		/*查所有*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Coustudent> QueryAllCoustudentInfo() {
	        Session s = factory.getCurrentSession();
	        String hql = "From Coustudent";   
	        Query q = s.createQuery(hql);
	        List coustudentList = q.list();
	        return (ArrayList<Coustudent>) coustudentList;
	    }
		
		/*根据主键查*/
		public Coustudent GetCoustudentById(Integer coustudentid) {
	        Session s = factory.getCurrentSession();
	        Coustudent coustudent = (Coustudent)s.get(Coustudent.class, coustudentid);
	        return coustudent;
	    }
		
		/*根据teacourse查*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Coustudent> QueryCoustudentByteacourse(Teacourse teacourse) { 
			Session s = factory.getCurrentSession();
	    	String hql = "From Coustudent coustudent where 1=1";
	    	if(null!=teacourse && teacourse.getTeacourseid()!=0) 
	    		hql = hql + " and coustudent.teacourse.teacourseid like '%" + teacourse.getTeacourseid() + "%'";
	    	Query q = s.createQuery(hql);
	    	List coustudentList = q.list();
	    	return (ArrayList<Coustudent>) coustudentList;
		}
       //根据student查纪录
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Coustudent> QueryCoustudentByStudent(User student) { 
			Session s = factory.getCurrentSession();
	    	String hql = "From Coustudent coustudent where 1=1";
	    	if(null!=student && student.getUserid()!=0) 
	    		hql = hql + " and coustudent.student.userid like '%" + student.getUserid() + "%'";
	    	Query q = s.createQuery(hql);
	    	List coustudentList = q.list();
	    	return (ArrayList<Coustudent>) coustudentList;
	    }
		

}
