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
@Service @Transactional

public class DeptDao {

		@Resource SessionFactory factory;
		
		/*增*/
		public void addDept(Dept dept) throws Exception{
			Session s = factory.getCurrentSession();
			s.save(dept);
		}		
		/*删*/
		public void deleteDept(Integer deptid)throws Exception{
		    Session s = factory.getCurrentSession();
			Object dept = s.load(Dept.class, deptid);
			s.delete(dept);
		}
		/*改*/
		public void updateDept(Dept dept)throws Exception{
			Session s = factory.getCurrentSession();
			s.update(dept);
		}
		
		/*查所有*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Dept> QueryAllTestInfo() {
	        Session s = factory.getCurrentSession();
	        String hql = "From Dept";   
	        Query q = s.createQuery(hql);
	        List deptList = q.list();
	        return (ArrayList<Dept>) deptList;
	    }		
		/*根据主键查*/
		public Dept GetDeptById(Integer deptid) {
	        Session s = factory.getCurrentSession();
	        Dept dept = (Dept)s.get(Dept.class, deptid);
	        return dept;
	    }		
		/*根据院系名称查*/
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public ArrayList<Dept> QueryDeptByDeptname(String deptname) { 
	    	Session s = factory.getCurrentSession();
	    	String hql = "From Dept dept where 1=1";
	    	if(!deptname.equals(""))
	    		hql = hql + " and dept.deptname like '%" + deptname + "%'";
	    	Query q = s.createQuery(hql);
	    	List deptList = q.list();
	    	return (ArrayList<Dept>) deptList;
	    }
}
