package com.mucCollege.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.mucCollege.model.Usertype;

@Repository
public class UsertypeDao {
	@Resource SessionFactory factory;
	public Usertype queryUsertypeByRole(String role) throws Exception{
		Session s = factory.getCurrentSession();
    	String hql = "From Usertype usertype where usertype.role like '%" + role + "%'";
    	Query q = s.createQuery(hql);
    	Usertype teachertype = (Usertype) q.uniqueResult();
    	return teachertype;
	}
}