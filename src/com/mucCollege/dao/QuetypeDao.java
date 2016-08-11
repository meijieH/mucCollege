package com.mucCollege.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.mucCollege.model.Quetype;

@Service@Transactional
public class QuetypeDao {
	@Resource SessionFactory factory;
	//增
	public void addQuetype(Quetype quetype){
		Session s=factory.getCurrentSession();
		s.save(quetype);
	}
	//删
	public void deleteQuetype(Integer quetypeid){
		Session s=factory.getCurrentSession();
		Object quetype=s.load(Quetype.class, quetypeid);
		s.delete(quetype);
	}
	//改
	public void updateQuetype(Quetype quetype){
		Session s=factory.getCurrentSession();
		s.update(quetype);
	}
	//查全表
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Quetype> QueryAllQuetype(){
		Session s=factory.getCurrentSession();
		String hql="From Quetype";
		Query q=s.createQuery(hql);
		List quetypeList=q.list();
		return (ArrayList<Quetype>)quetypeList;
	}
	//ͨ通过id查询
	public Quetype GetQuetypeById(Integer quetypeid) {  
        Session s = factory.getCurrentSession();
        Quetype quetype = (Quetype)s.get(Quetype.class,quetypeid);//返回类型是Object
        return quetype;
    }
	//通过QuetypeName查询
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Quetype> QueryQuetype(String typename) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From Quetype quetype where 1=1";//保证空条件查询不出错
    	if(!typename.equals("")) hql = hql + " and quetype.typename like '%" + typename + "%'";
    	Query q = s.createQuery(hql);
    	List quetypeList = q.list();
    	return (ArrayList<Quetype>) quetypeList;
    }
}
