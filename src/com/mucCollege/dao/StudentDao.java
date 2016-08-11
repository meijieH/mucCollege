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
import com.mucCollege.model.Student;

@Service@Transactional
public class StudentDao {
	@Resource SessionFactory factory;
	//增
	public void addUser(Student student){
		Session s=factory.getCurrentSession();
		s.save(student);
	}
	//改
	public void updateStudent(Student student){
		Session s=factory.getCurrentSession();
		s.update(student);
	}
	//删
	public void deleteStudent(Integer studentid){
		Session s=factory.getCurrentSession();
		Object student=s.load(Student.class, studentid);
		s.delete(student);
	}
	//查全表
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Student> QueryAllStudent(){
		Session s=factory.getCurrentSession();
		String hql="From Student";
		Query q=s.createQuery(hql);
		List studentList=q.list();
		return (ArrayList<Student>)studentList;
	}
	//通过主键查询
	public Student GetStudentById(Integer studentid) {  
        Session s = factory.getCurrentSession();
        Student student = (Student)s.get(Student.class,studentid);
        return student;
    }
	//通过姓名来查询
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Student> QueryStudentByName(String studentname) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From Student student where 1=1";
    	if(!studentname.equals("")) hql = hql + " and student.stuname like '%" + studentname + "%'";
    	Query q = s.createQuery(hql);
    	List studentList = q.list();
    	return (ArrayList<Student>) studentList;
    }
	//通过学号来查询
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Student> QueryStudentByStunumber(String stunumber) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From Student student where 1=1";
    	if(!stunumber.equals("")) hql=hql+" and student.stunumber like '%" + stunumber + "%'";
    	Query q = s.createQuery(hql);
    	List studentList = q.list();
    	return (ArrayList<Student>) studentList;
    }
	//通过班级来查询
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Student> QueryStudentByClass(StuClass stuclass) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From Student student where 1=1";
    	if(!stuclass.equals("")) hql = hql + " and student.class.classid like '%" + stuclass.getClassid() + "%'";
    	Query q = s.createQuery(hql);
    	List studentList = q.list();
    	return (ArrayList<Student>) studentList;
    }
}
