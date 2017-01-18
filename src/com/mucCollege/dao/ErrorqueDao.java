package com.mucCollege.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Errorque;
import com.mucCollege.model.Question;

@Service@Transactional
public class ErrorqueDao {
	@Resource SessionFactory factory;
	//增
	public void addErrorque(Errorque errorque){
		Session s=factory.getCurrentSession();
		s.save(errorque);
	}
	//删
	public void deleteErrorque(Integer errorqueid){
		Session s=factory.getCurrentSession();
		Object errorque=s.load(Errorque.class, errorqueid);
		s.delete(errorque);
	}
	//改
		public void updateErrorque(Errorque errorque){
			Session s=factory.getCurrentSession();
			s.update(errorque);
		}
	//查全表
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Errorque> QueryAllErrorque(){
		Session s=factory.getCurrentSession();
		String hql="From Errorque";
		Query q=s.createQuery(hql);
		List errorqueList=q.list();
		return (ArrayList<Errorque>)errorqueList;
	}
	//ͨ通过id查询
	public Errorque GetErrorqueById(Integer errorqueid) {  
        Session s = factory.getCurrentSession();
        Errorque errorque = (Errorque)s.get(Errorque.class,errorqueid);//返回类型是Object
        return errorque;
    }
	//通过question查询(此时question存的是题库表的题目,是一个对象)	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Errorque> QueryErrorque(Question question) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From Errorque errorque where 1=1";
    	if(null!=question && question.getQuestionid()!=0) 
    		hql = hql + " and errorque.question.questionid like '%" + question.getQuestionid() + "%'";
    	Query q = s.createQuery(hql);
    	List errorqueList = q.list();
    	return (ArrayList<Errorque>) errorqueList;
    }
}
