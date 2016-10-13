package com.mucCollege.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Dept;
import com.mucCollege.model.StuClass;

@Service@Transactional
public class StuClassDao {
	@Resource SessionFactory factory;
	//增
	public void addClass(StuClass stuClass){
		Session s=factory.getCurrentSession();
		s.save(stuClass);
	}
	//改
	public void updateClass(StuClass stuClass){
		Session s=factory.getCurrentSession();
		s.update(stuClass);
	}
	//删
	public void deleteClass(Integer classid){
		Session s=factory.getCurrentSession();
		Object stuClass=s.load(StuClass.class, classid);
		s.delete(stuClass);
	}
	//查全表
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<StuClass> QueryAllClass(){
		Session s=factory.getCurrentSession();
		String hql="From StuClass";
		Query q=s.createQuery(hql);
		List classList=q.list();
		return (ArrayList<StuClass>)classList;
	}
	//通过主键查
	public StuClass GetClassById(Integer classid) {  //通过主键查，只能得到一条记录
        Session s = factory.getCurrentSession();
        StuClass stuClass = (StuClass)s.get(StuClass.class,classid);//查出是Object类的，需要强制转换为Book类的
        return stuClass;
    }
	//条件查找:通过班级名称查找
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<StuClass> QueryClassByName(String classname) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From StuClass stuClass where 1=1";//最基本的
    	if(!classname.equals("")) hql = hql + " and stuClass.classname like '%" + classname + "%'";
    	Query q = s.createQuery(hql);
		List classList = q.list();
    	return (ArrayList<StuClass>) classList;
    }
	//条件查找:通过学院查找
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<StuClass> QueryClassByDept(Dept dept) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From StuClass stuClass where 1=1";//最基本的
    	if(!dept.equals("")) hql = hql + " and stuClass.dept.deptid like '%" + dept.getDeptid() + "%'";
    	Query q = s.createQuery(hql);
		List classList = q.list();
    	return (ArrayList<StuClass>) classList;
    }
    	public List<StuClass> queryAllStuClass() throws Exception{
		Session s = factory.getCurrentSession();
    	String hql = " From StuClass stuClass ";
    	Query q = s.createQuery(hql);
    	@SuppressWarnings("unchecked")
		List<StuClass> results=q.list();
    	return results;
	}
	public StuClass getStuClassById(Integer id){
		Session s = factory.getCurrentSession();
    	return (StuClass) s.get(StuClass.class, id);
	}
}
