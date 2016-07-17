package com.mucCollege.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.mucCollege.model.Admin;

@Service
@Transactional
public class AdminDao {
	@Resource
	SessionFactory factory;

	// 增
	public void addAdmin(Admin admin) {
		Session s = factory.getCurrentSession();
		s.save(admin);
	}

	// 改
	public void updateAdmin(Admin admin) {
		Session s = factory.getCurrentSession();
		s.update(admin);
	}

	// 查全表
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Admin> QueryAllAdmin() {
		Session s = factory.getCurrentSession();
		String hql = "From Admin";
		Query q = s.createQuery(hql);
		List AdminList = q.list();
		return (ArrayList<Admin>) AdminList;
	}
	// ͨ通过id查询
	public Admin GetAdminById(Integer adminid) {
		Session s = factory.getCurrentSession();
		Admin Admin = (Admin) s.get(Admin.class, adminid);// 返回类型是Object
		return Admin;
	}

	// 通过adminName查询
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Admin> QueryAdmin(String adminname) {
		Session s = factory.getCurrentSession();
		String hql = "From Admin admin where 1=1";// 保证空条件查询不出错
		if (!adminname.equals(""))
			hql = hql + " and admin.username like '%" + adminname + "%'";
		Query q = s.createQuery(hql);
		List adminList = q.list();
		return (ArrayList<Admin>) adminList;
	}
}
