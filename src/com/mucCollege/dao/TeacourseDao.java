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
import com.mucCollege.model.StuClass;
import com.mucCollege.model.Teacher;
import com.mucCollege.model.Teacourse;
@Service @Transactional

public class TeacourseDao {

		@Resource SessionFactory factory;
		
		/*增*/
		public void addTeacourse(Teacourse teacourse) throws Exception{
			Session s = factory.getCurrentSession();
			s.save(teacourse);
		}
		
		/*删*/
		public void deleteTeacourse(Integer Teacourseid)throws Exception{
		    Session s = factory.getCurrentSession();
			Object teacourse = s.load(Teacourse.class, Teacourseid);
			s.delete(teacourse);
		}
		
		/*改*/
		public void updateTeacourse(Teacourse teacourse)throws Exception{
			Session s = factory.getCurrentSession();
			s.update(teacourse);
		}
		
		/*查所有*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Teacourse> QueryAllTeacourseInfo() {
	        Session s = factory.getCurrentSession();
	        String hql = "From Teacourse";   
	        Query q = s.createQuery(hql);
	        List teacourseList = q.list();
	        return (ArrayList<Teacourse>) teacourseList;
	    }
		
		/*根据主键查*/
		public Teacourse GetTeacourseById(Integer Teacourseid) {
	        Session s = factory.getCurrentSession();
	        Teacourse teacourse = (Teacourse)s.get(Teacourse.class, Teacourseid);
	        return teacourse;
	    }
		
		/*根据教师查*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Teacourse> QueryTeacourseByTeacher(Teacher teacher) { 
			Session s = factory.getCurrentSession();
	    	String hql = "From Teacourse teacourse where 1=1";
	    	if(null!=teacher && teacher.getTeacherid()!=0) 
	    		hql = hql + " and teacourse.teacher.teacherid like '%" + teacher.getTeacherid() + "%'";
	    	Query q = s.createQuery(hql);
	    	List teacourseList = q.list();
	    	return (ArrayList<Teacourse>) teacourseList;
		}
        //根据课程查		
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Teacourse> QueryTeacourseByCourse(Course course) { 
			Session s = factory.getCurrentSession();
	    	String hql = "From Teacourse teacourse where 1=1";
	    	if(null!=course && course.getCourseid()!=0) 
	    		hql = hql + " and teacourse.course.courseid like '%" + course.getCourseid() + "%'";
	    	Query q = s.createQuery(hql);
	    	List teacourseList = q.list();
	    	return (ArrayList<Teacourse>) teacourseList;
		}
       //根据班级查		
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Teacourse> QueryTeacourseByClass(StuClass stuclass) { 
			Session s = factory.getCurrentSession();
	    	String hql = "From Teacourse teacourse where 1=1";
	    	if(null!=stuclass &&stuclass.getClassid()!=0)
	    		hql = hql + " and teacourse.class.classid like '%" + stuclass.getClassid() + "%'";
	    	Query q = s.createQuery(hql);
	    	List teacourseList = q.list();
	    	return (ArrayList<Teacourse>) teacourseList;
	    }
}
