package com.mucCollege.dao;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.StuClass;
import com.mucCollege.model.User;

@Service@Transactional
public class StudentDao {
	@Resource SessionFactory factory;
	//增
	public void addUser(User student){
		Session s=factory.getCurrentSession();
		s.save(student);
	}
	//改
	public void updateStudent(User student){
		Session s=factory.getCurrentSession();
		s.update(student);
	}
	//删
	public void deleteStudent(Integer studentid){
		Session s=factory.getCurrentSession();
		Object student=s.load(User.class, studentid);
		s.delete(student);
	}
	//查全表
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<User> QueryAllStudent(){
		Session s=factory.getCurrentSession();
		String hql="From Student";
		Query q=s.createQuery(hql);
		List studentList=q.list();
		return (ArrayList<User>)studentList;
	}
	//通过主键查询
	public User GetStudentById(Integer studentid) {  
        Session s = factory.getCurrentSession();
        User student = (User)s.get(User.class,studentid);
        return student;
    }
	//通过用户名来查询
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<User> QueryStudentByUserName(String studentname) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From User user where 1=1";
    	if(!studentname.equals("")) hql = hql + " and user.username like '%" + studentname + "%'";
    	Query q = s.createQuery(hql);
    	List studentList = q.list();
    	return (ArrayList<User>) studentList;
    }
	//通过真实名称来查询
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<User> QueryStudentByReaName(String studentname) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From User user where 1=1";
    	if(!studentname.equals("")) hql = hql + " and user.reaname like '%" + studentname + "%'";
    	Query q = s.createQuery(hql);
    	List studentList = q.list();
    	return (ArrayList<User>) studentList;
    }
	//通过学号来查询
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<User> QueryStudentByStunumber(String stunumber) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From User user where 1=1";
    	if(!stunumber.equals("")) hql=hql+" and user.usernum like '%" + stunumber + "%'";
    	Query q = s.createQuery(hql);
    	List studentList = q.list();
    	return (ArrayList<User>) studentList;
    }
	//通过班级来查询
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<User> QueryStudentByClass(StuClass stuclass) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From User user where 1=1";
    	if(!stuclass.equals("")) hql = hql + " and user.class.classid like '%" + stuclass.getClassid() + "%'";
    	Query q = s.createQuery(hql);
    	List studentList = q.list();
    	return (ArrayList<User>) studentList;
    }
}