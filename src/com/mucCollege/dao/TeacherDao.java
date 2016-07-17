package com.mucCollege.dao;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;

import com.mucCollege.model.Dept;
import com.mucCollege.model.Teacher;

@Controller
public class TeacherDao {

		@Resource SessionFactory factory;
		
		/*增*/
		public void addTeacher(Teacher teacher) throws Exception{
			Session s = factory.getCurrentSession();
			s.save(teacher);
		}
		
		/*删*/
		public void deleteTeacher(Integer teacherid)throws Exception{
		    Session s = factory.getCurrentSession();
			Object teacher = s.load(Teacher.class, teacherid);
			s.delete(teacher);
		}
		
		/*改*/
		public void updateTeacher(Teacher teacher)throws Exception{
			Session s = factory.getCurrentSession();
			s.update(teacher);
		}
		
		/*查所有*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Teacher> QueryAllTeacher() {
	        Session s = factory.getCurrentSession();
	        String hql = "From Teacher";   
	        Query q = s.createQuery(hql);
	        List teacherList = q.list();
	        return (ArrayList<Teacher>) teacherList;
	    }		
		/*根据主键查*/
		public Teacher GetTeacherById(Integer teacherid) {
	        Session s = factory.getCurrentSession();
	        Teacher teacher = (Teacher)s.get(Teacher.class, teacherid);
	        return teacher;
	    }
		/*根据工号查*/
		public Teacher GetTeacherByTeanum(String teanum) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Teacher teacher where 1=1";
	    	if(!teanum.equals("")) hql = hql + " and teacher.teanum like '%" + teanum + "%'";
	    	Query q = s.createQuery(hql);
	    	Teacher teacher = (Teacher) q.uniqueResult();
	    	return teacher;
	    }
		/*根据老师姓名查*/
		@SuppressWarnings({ "unchecked","rawtypes" })
		public ArrayList<Teacher> QueryTeacherByTeaname(String teaname) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Teacher teacher where 1=1";
	    	if(!teaname.equals("")) hql = hql + " and teacher.teaname like '%" + teaname + "%'";
	    	Query q = s.createQuery(hql);
	    	List teacherList = q.list();
	    	return (ArrayList<Teacher>) teacherList;
	    }
		/*根据老师院系查*/
		@SuppressWarnings({ "unchecked","rawtypes" })
		public ArrayList<Teacher> QueryTeacherByDept(Dept dept) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Teacher teacher where 1=1";
	    	if(null!=dept&&!dept.getDeptname().equals("")) hql = hql + " and teacher.dept.deptid like '%" + dept.getDeptid() + "%'";
	    	Query q = s.createQuery(hql);
	    	List teacherList = q.list();
	    	return (ArrayList<Teacher>) teacherList;
	    }
		/*根据老师职称查*/
		@SuppressWarnings({ "unchecked","rawtypes" })
		public ArrayList<Teacher> QueryTeacherByPosition(String position) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Teacher teacher where 1=1";
	    	if(!position.equals("")) hql = hql + " and teacher.position like '%" + position + "%'";
	    	Query q = s.createQuery(hql);
	    	List teacherList = q.list();
	    	return (ArrayList<Teacher>) teacherList;
	    }
		
}