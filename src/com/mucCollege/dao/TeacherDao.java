package com.mucCollege.dao;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;

import com.mucCollege.model.Dept;
import com.mucCollege.model.User;

@Controller
public class TeacherDao {

		@Resource SessionFactory factory;
		
		/*增*/
		public void addTeacher(User teacher) throws Exception{
			Session s = factory.getCurrentSession();
			s.save(teacher);
		}
		
		/*删*/
		public void deleteTeacher(Integer teacherid)throws Exception{
		    Session s = factory.getCurrentSession();
			Object teacher = s.load(User.class, teacherid);
			s.delete(teacher);
		}
		
		/*改*/
		public void updateTeacher(User teacher)throws Exception{
			Session s = factory.getCurrentSession();
			s.update(teacher);
		}
		
		/*查所有*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<User> QueryAllTeacher() {
	        Session s = factory.getCurrentSession();
	        String hql = "From Teacher";   
	        Query q = s.createQuery(hql);
	        List teacherList = q.list();
	        return (ArrayList<User>) teacherList;
	    }		
		/*根据主键查*/
		public User QueryTeacherById(Integer teacherid) {
	        Session s = factory.getCurrentSession();
	        User teacher = (User)s.get(User.class, teacherid);
	        return teacher;
	    }
		/*根据工号查*/
		public User QueryTeacherByTeanum(String teanum) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From User user where 1=1";
	    	if(!teanum.equals("")) hql = hql + " and user.usernum like '%" + teanum + "%'";
	    	Query q = s.createQuery(hql);
	    	User teacher = (User) q.uniqueResult();
	    	return teacher;
	    }
		/*根据老师姓名查*/
		@SuppressWarnings({ "unchecked","rawtypes" })
		public ArrayList<User> QueryTeacherByTeaname(String teaname) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From User user where 1=1";
	    	if(!teaname.equals("")) hql = hql + " and user.username like '%" + teaname + "%'";
	    	Query q = s.createQuery(hql);
	    	List teacherList = q.list();
	    	return (ArrayList<User>) teacherList;
	    }
		/*根据老师院系查*/
		@SuppressWarnings({ "unchecked","rawtypes" })
		public ArrayList<User> QueryTeacherByDept(Dept dept) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From User user where 1=1";
	    	if(null!=dept&&!dept.getDeptname().equals("")) hql = hql + " and user.dept.deptid like '%" + dept.getDeptid() + "%'";
	    	Query q = s.createQuery(hql);
	    	List teacherList = q.list();
	    	return (ArrayList<User>) teacherList;
	    }
		/*根据老师职称查*/
		@SuppressWarnings({ "unchecked","rawtypes" })
		public ArrayList<User> QueryTeacherByPosition(String position) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From User user where 1=1";
	    	if(!position.equals("")) hql = hql + " and user.position like '%" + position + "%'";
	    	Query q = s.createQuery(hql);
	    	List teacherList = q.list();
	    	return (ArrayList<User>) teacherList;
	    }
		
}