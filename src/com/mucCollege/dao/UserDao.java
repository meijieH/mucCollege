package com.mucCollege.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.mucCollege.model.User;

@Repository
public class UserDao {
	@Resource SessionFactory factory;
	public Integer addUser (User user) throws Exception{
		Session s = factory.getCurrentSession();
		user.setUserid(1);
		return (Integer) s.save(user);
	}
	public User queryUserByUsernum (String usernum) throws Exception{ 
    	Session s = factory.getCurrentSession();
    	String hql = "From User user where user.usernum like '%" + usernum + "%'";
    	Query q = s.createQuery(hql);
    	User user = (User) q.uniqueResult();
    	return user;
    }
}