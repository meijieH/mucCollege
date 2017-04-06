package com.mucCollege.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.mucCollege.model.Dept;
import com.mucCollege.model.User;

@Repository
public class UserDao {
	@Resource
	SessionFactory factory;

	/* 增 */
	public void addUser(User user) throws Exception {
		Session s = factory.getCurrentSession();
		s.save(user);
	}

	/* 删 */
	public void deleteUser(Integer userid) throws Exception {
		Session s = factory.getCurrentSession();
		Object user = s.load(User.class, userid);
		s.delete(user);
	}

	/* 改 */
	public void updateUser(User user) throws Exception {
		Session s = factory.getCurrentSession();
		s.update(user);
	}

	/* 查所有 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<User> QueryAllUser() {
		Session s = factory.getCurrentSession();
		String hql = "From user";
		Query q = s.createQuery(hql);
		List userList = q.list();
		return (ArrayList<User>) userList;
	}

	/* 根据主键查 */
	public User QueryUserById(Integer userid) {
		Session s = factory.getCurrentSession();
		User user = (User) s.get(User.class, userid);
		return user;
	}

	/* 根据工号查 */
	public User QueryUserByUsernum(String usernum) {
		Session s = factory.getCurrentSession();
		String hql = "From User user where 1=1";
		if (!usernum.equals(""))
			hql = hql + " and user.usernum ='" + usernum +"'";
		Query q = s.createQuery(hql);
		User user = (User) q.uniqueResult();
		return user;
	}

	/* 根据姓名查 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<User> QueryUserByUsername(String username) {
		Session s = factory.getCurrentSession();
		String hql = "From User user where 1=1";
		if (!username.equals(""))
			hql = hql + " and user.username like '%" + username + "%'";
		Query q = s.createQuery(hql);
		List userList = q.list();
		return (ArrayList<User>) userList;
	}

	/* 根据院系查 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<User> QueryUserByDept(Dept dept) {
		Session s = factory.getCurrentSession();
		String hql = "From User user where 1=1";
		if (null != dept && !dept.getDeptname().equals(""))
			hql = hql + " and user.dept.deptid like '%" + dept.getDeptid()
					+ "%'";
		Query q = s.createQuery(hql);
		List userList = q.list();
		return (ArrayList<User>) userList;
	}

	/* 根据老师职称查 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<User> QueryUserByPosition(String position) {
		Session s = factory.getCurrentSession();
		String hql = "From User user where 1=1";
		if (!position.equals(""))
			hql = hql + " and user.position like '%" + position + "%'";
		Query q = s.createQuery(hql);
		List userList = q.list();
		return (ArrayList<User>) userList;
	}

	public ArrayList<User> QueryAllStudent() {
		Session s = factory.getCurrentSession();
		String hql = "From User user where user.usertype.usertypeid = 3";
		Query q = s.createQuery(hql);
		List userList = q.list();
		return (ArrayList<User>) userList;
	}

	public ArrayList<User> QueryAllTeacher() {
		Session s = factory.getCurrentSession();
		String hql = "From User user where user.usertype.usertypeid = 2";
		Query q = s.createQuery(hql);
		List userList = q.list();
		return (ArrayList<User>) userList;
	}

}