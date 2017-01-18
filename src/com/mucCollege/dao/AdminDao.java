package com.mucCollege.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.mucCollege.model.User;

@Service
@Transactional
public class AdminDao extends UserDao{
	@Resource
	SessionFactory factory;

	// 查全表
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<User> QueryAllAdmin() {
		Session s = factory.getCurrentSession();
		String hql = "From User";
		Query q = s.createQuery(hql);
		List AdminList = q.list();
		return (ArrayList<User>) AdminList;
	}
	// ͨ通过id查询
	public User GetAdminById(Integer adminid) {
		Session s = factory.getCurrentSession();
		User Admin = (User) s.get(User.class, adminid);// 返回类型是Object
		return Admin;
	}

	// 通过adminName查询
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<User> QueryAdmin(String adminname) {
		Session s = factory.getCurrentSession();
		String hql = "From User user where 1=1";// 保证空条件查询不出错
		if (!adminname.equals(""))
			hql = hql + " and user.username like '%" + adminname + "%'";
		Query q = s.createQuery(hql);
		List adminList = q.list();
		return (ArrayList<User>) adminList;
	}
}
