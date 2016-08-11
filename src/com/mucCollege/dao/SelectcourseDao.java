package com.mucCollege.dao;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Course;
import com.mucCollege.model.User;
import com.mucCollege.model.Selectcourse;
@Service @Transactional

public class SelectcourseDao {

		@Resource SessionFactory factory;
		
		/*增*/
		public void addSelectcourse(Selectcourse selectcourse) throws Exception{
			Session s = factory.getCurrentSession();
			s.save(selectcourse);
		}
		
		/*删*/
		public void deleteSelectcourse(Integer selectid)throws Exception{
		    Session s = factory.getCurrentSession();
			Object selectcourse = s.load(Selectcourse.class, selectid);
			s.delete(selectcourse);
		}
		
		/*改*/
		public void updateSelectcourse(Selectcourse selectcourse)throws Exception{
			Session s = factory.getCurrentSession();
			s.update(selectcourse);
		}
		
		/*查所有*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Selectcourse> QueryAllSelectcourseInfo() {
	        Session s = factory.getCurrentSession();
	        String hql = "From Selectcourse";   
	        Query q = s.createQuery(hql);
	        List selectcourseList = q.list();
	        return (ArrayList<Selectcourse>) selectcourseList;
	    }
		
		/*根据主键查*/
		public Selectcourse GetSelectcourseById(Integer selectid) {
	        Session s = factory.getCurrentSession();
	        Selectcourse selectcourse = (Selectcourse)s.get(Selectcourse.class, selectid);
	        return selectcourse;
	    }
		
		/*根据学生查*/
		@SuppressWarnings({ "rawtypes", "unchecked" })
		public ArrayList<Selectcourse> QuerySelectcourseByStudent(User student) {
			Session s = factory.getCurrentSession();
	    	String hql = "From Selectcourse selectcourse where 1=1";
	    	if(null!=student && student.getUserid()!=0) 
	    		hql = hql + " and selectcourse.student.userid like '%" + student.getUserid() + "%'";
	    	Query q = s.createQuery(hql);
	    	List selectcourseList = q.list();
	    	return (ArrayList<Selectcourse>) selectcourseList;
		}
			
       //根据课程查
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Selectcourse> QuerySelectcourseByCourse(Course course) { 
			Session s = factory.getCurrentSession();
	    	String hql = "From Selectcourse selectcourse where 1=1";
	    	if(null!=course && null!=course.getCourseid()) 
	    		hql = hql + " and teacourse.course.courseid like '%" + course.getCourseid() + "%'";
	    	Query q = s.createQuery(hql);
	    	List selectcourseList = q.list();
	    	return (ArrayList<Selectcourse>) selectcourseList;
	    }
}
