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

@Service@Transactional
public class CourseDao {
	@Resource SessionFactory factory;
	//增
	public void addCourse(Course course){
		Session s=factory.getCurrentSession();
		s.save(course);
	}
	//改
	public void updateCourse(Course course){
		Session s=factory.getCurrentSession();
		s.update(course);
	}
	//删
	public void deleteCourse(Integer Courseid){
		Session s=factory.getCurrentSession();
		Object course=s.load(Course.class, Courseid);
		s.delete(course);
	}
	//查全表
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> QueryAllCourse(){
		Session s=factory.getCurrentSession();
		String hql="From Course";
		Query q=s.createQuery(hql);
		List courseList=q.list();
		return (ArrayList<Course>)courseList;
	}
	//通过主键查
	public Course GetCourseById(Integer courseid) {  //通过主键查，只能得到一条记录
        Session s = factory.getCurrentSession();
        Course course= (Course)s.get(Course.class,courseid);//查出是Object类的，需要强制转换为Book类的
        return course;
    }
	//条件查找：通过课程名称查找
	@SuppressWarnings("unchecked")
	public ArrayList<Course> QueryCourseByName(String coursename) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From Course where 1=1";//最基本的
    	if(!coursename.equals("")) hql = hql + " and course.coursename like '%" + coursename + "%'";
    	Query q = s.createQuery(hql);
    	@SuppressWarnings("rawtypes")
		List courseList = q.list();
    	return (ArrayList<Course>) courseList;
    }
	//条件查找：通过课程介绍查找
		@SuppressWarnings("unchecked")
		public ArrayList<Course> QueryCourseByDetail(String detail) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Course where 1=1";//最基本的
	    	if(!detail.equals("")) hql = hql + " and course.detail like '%" + detail + "%'";
	    	Query q = s.createQuery(hql);
	    	@SuppressWarnings("rawtypes")
			List courseList = q.list();
	    	return (ArrayList<Course>) courseList;
	    }
	

}
