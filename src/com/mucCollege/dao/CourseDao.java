package com.mucCollege.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Course;

@Repository
public class CourseDao {
	@Resource
	SessionFactory factory;

	public List<Course> queryActiveCourse() throws Exception {// 获取已注册且正常的课程
		Session s = factory.getCurrentSession();
		String hql = "From Course course where course.state like '%" + "正常"
				+ "%'";
		Query q = s.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Course> results = q.list();
		return results;
	}

	@SuppressWarnings("unchecked")
	public ArrayList<Course> queryCourseByCoursename(String coursename)
			throws Exception {// 获取已注册且正常的课程
		Session s = factory.getCurrentSession();
		String hql = "From Course course where course.coursename like '%"
				+ coursename + "%'";
		Query q = s.createQuery(hql);
		List couList = q.list();
		return (ArrayList<Course>) couList;
	}

	// 增
	public Integer addCourse(Course course) {
		course.setCourseid(1);
		Session s = factory.getCurrentSession();
		return (Integer) s.save(course);
	}

	// 改
	public void updateCourse(Course course) {
		Session s = factory.getCurrentSession();
		s.update(course);
	}

	// 删
	public void deleteCourse(Integer Courseid) {
		Session s = factory.getCurrentSession();
		Object course = s.load(Course.class, Courseid);
		s.delete(course);
	}

	// 查全表
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Course> QueryAllCourse() {
		Session s = factory.getCurrentSession();
		String hql = "From Course";
		Query q = s.createQuery(hql);
		List courseList = q.list();
		return (ArrayList<Course>) courseList;
	}

	// 通过主键查
	public Course GetCourseById(Integer courseid) { // 通过主键查，只能得到一条记录
		Session s = factory.getCurrentSession();
		Course course = (Course) s.get(Course.class, courseid);// 查出是Object类的，需要强制转换为Book类的
		return course;
	}

	// 条件查找：通过课程名称查找
	public Course QueryCourseByName(String coursename) {
		Session s = factory.getCurrentSession();
		String hql = "From Course course where 1=1";
		/**
		 * 此行存在错误，导致数据库无法读取，已修正，原代码为 String hql =
		 * "From Course where 1=1";*@author 杨赟 *2016/7/19
		 */
		if (!coursename.equals(""))
			hql = hql + " and course.coursename like '%" + coursename + "%'";
		Query q = s.createQuery(hql);
		Course course = (Course) q.uniqueResult();
		return course;
	}

	// 条件查找：通过课程介绍查找
	@SuppressWarnings("unchecked")
	public ArrayList<Course> QueryCourseByDetail(String detail) {
		Session s = factory.getCurrentSession();
		String hql = "From Course where 1=1";// 最基本的
		if (!detail.equals(""))
			hql = hql + " and course.detail like '%" + detail + "%'";
		Query q = s.createQuery(hql);
		@SuppressWarnings("rawtypes")
		List courseList = q.list();
		return (ArrayList<Course>) courseList;
	}

}
