package com.mucCollege.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Collection;

@Service
@Transactional
public class CollectionDao {
	@Resource
	SessionFactory factory;

	/* 增 */
	public void addcollection(Collection collection) throws Exception {
		Session s = factory.getCurrentSession();
		s.save(collection);
	}

	/* 删 */
	public void deletecollection(Integer collectionid) throws Exception {
		Session s = factory.getCurrentSession();
		Object collection = s.load(Collection.class, collectionid);
		s.delete(collection);
	}

	/* 改 */
	public void updatecollection(Collection collection) throws Exception {
		Session s = factory.getCurrentSession();
		s.update(collection);
	}

	/* 查所有 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Collection> QueryAllTestInfo() {
		Session s = factory.getCurrentSession();
		String hql = "From Collection";
		Query q = s.createQuery(hql);
		List collectionList = q.list();
		return (ArrayList<Collection>) collectionList;
	}

	/* 根据主键查 */
	public Collection GetcollectionById(Integer collectionid) {
		Session s = factory.getCurrentSession();
		Collection collection = (Collection) s.get(Collection.class, collectionid);
		return collection;
	}

	/* 根据收藏夹名称查 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Collection> queryCollectionBycollectionname(String collectionname) {
		System.out.print(collectionname);
		Session s = factory.getCurrentSession();
		String hql = "From Collection collection where 1=1";
		if (!collectionname.equals(""))
			hql = hql + " and collection.collectionname like '%" + collectionname + "%'";
		Query q = s.createQuery(hql);
		List collectionList = q.list();
		return (ArrayList<Collection>) collectionList;
	}

	public List<String> queryNameByTeacher(Integer userid) {
		Session s=factory.getCurrentSession();
		String hql="select distinct(collectionname) from Collection collection where collection.user.userid ="+userid;
		Query q = s.createQuery(hql);
		List<String> stringList = q.list();
		return stringList;
	}
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<Collection> queryCollectionByTeacher(Integer userid){
		Session s=factory.getCurrentSession();
		String hql="From Collection collection where collection.user.userid ="+userid;
		Query q = s.createQuery(hql);
		List collectionList = q.list();
		return (ArrayList<Collection>) collectionList;
	}
}
