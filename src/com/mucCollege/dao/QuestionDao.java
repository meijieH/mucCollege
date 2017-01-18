 package com.mucCollege.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.mucCollege.model.Question;

@Service@Transactional
public class QuestionDao {
	@Resource SessionFactory factory;
	//增
	public void addQuestion(Question question){
		Session s=factory.getCurrentSession();
		s.save(question);
	}
	//删
	public void deleteQuestion(Integer questionid){
		Session s=factory.getCurrentSession();
		Object question=s.load(Question.class, questionid);
		s.delete(question);
	}
	//改
	public void updateQuestion(Question question){
		Session s=factory.getCurrentSession();
		s.update(question);
	}
	//查全表
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Question> QueryAllQuestion(){
		Session s=factory.getCurrentSession();
		String hql="From Question";
		Query q=s.createQuery(hql);
		List questionList=q.list();
		return (ArrayList<Question>)questionList;
	}
	//ͨ通过id查询
	public Question GetQuestionById(Integer questionid) {  
        Session s = factory.getCurrentSession();
        Question question = (Question)s.get(Question.class,questionid);//返回类型是Object
        return question;
    }
	//通过subject查询	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Question> QueryQuestionBySub(String subject) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From Question question where 1=1";//保证空条件查询不出错
    	if(!subject.equals("")) hql = hql + " and question.subject like '%" + subject + "%'";
    	Query q = s.createQuery(hql);
    	List subjectList = q.list();
    	return (ArrayList<Question>) subjectList;
    }
	//通过label查询	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Question> QueryQuestionByLabel(String label) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From Question question where 1=1";//保证空条件查询不出错
    	if(!label.equals("")) hql = hql + " and question.label like '%" + label + "%'";
    	Query q = s.createQuery(hql);
    	List labelList = q.list();
    	return (ArrayList<Question>) labelList;
    }
	//通过stem查询	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Question> QueryQuestionByStem(String stem) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From Question question where 1=1";//保证空条件查询不出错
    	if(!stem.equals("")) hql = hql + " and question.stem like '%" + stem + "%'";
    	Query q = s.createQuery(hql);
    	List stemList = q.list();
    	return (ArrayList<Question>) stemList;
    }
}
