package com.mucCollege.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.dao.CollectionDao;
import com.mucCollege.dao.QuestionDao;
import com.mucCollege.dao.TeacherDao;
import com.mucCollege.dao.TeacourseDao;
import com.mucCollege.model.Collection;
import com.mucCollege.model.Course;
import com.mucCollege.model.Coustudent;
import com.mucCollege.model.Question;
import com.mucCollege.model.Teacourse;

@Service
@Transactional
public class TeacherService extends UserService {
	@Resource
	TeacherDao teacherDao;
	@Resource
	QuestionDao questionDao;
	@Resource
	CollectionDao collectionDao;
	@Resource
	TeacourseDao teacourseDao;

	// 3.对题目的操作**********
	// 增加题目
	public void addQuestion(Question question) {
		questionDao.addQuestion(question);
	}

	public void addCollection(Collection collection) throws Exception {
		collectionDao.addcollection(collection);
	}
	
	// 查看所有题目
	public ArrayList<Question> showAllQuestion() {
		ArrayList<Question> questionList = questionDao.QueryAllQuestion();
		return questionList;
	}

	// 查看我添加的题目
	public ArrayList<Question> showMyQuestions(int userid) {
		ArrayList<Question> questionList = questionDao.QueryQuestionByAdder(userid);
		return questionList;
	}

	public Question showQuestion(Integer questionid) {
		Question db_question = questionDao.GetQuestionById(questionid);
		return db_question;
	}

	// 修改题目
	public void updateQuestion(Question question) {
		questionDao.updateQuestion(question);
	}

	// 删除题目
	public void deleteQuestion(int questionid) {
		questionDao.deleteQuestion(questionid);
	}

	// 4.对课程的操作**********
	// 增加课程
	public void addTeacourse(Teacourse teacourse) throws Exception {
		teacourseDao.addTeacourse(teacourse);
	}

	// 查看课程
	public Course queryCourseById(int courseid) {
		Course db_course = courseDao.GetCourseById(courseid);
		return db_course;
	}

	//查找课程
	public ArrayList<Course> queryCourse(String coursename) throws Exception{
		ArrayList<Course> couList=courseDao.queryCourseByCoursename(coursename);
		return couList;
	}
	//查看我的课程
	public ArrayList<Teacourse> queryMyCourses(int userid) throws Exception{
		ArrayList<Teacourse> teacouList=teacourseDao.queryTeacourseByTeacherid(userid);
		return teacouList;
	}
	// 修改课程
	public void updateCourse(Course course) {
		courseDao.updateCourse(course);
	}

	public ArrayList<Course> showAllCourses() {
		ArrayList<Course> couList=courseDao.QueryAllCourse();
		return couList;
	}

	public List<String> queryColByTeacher(Integer userid) {
		List<String> stringList=collectionDao.queryNameByTeacher(userid);
		return stringList;
	}

	public Teacourse queryTeaCourseById(Integer teacourseid) throws Exception {
		Teacourse teacourse=teacourseDao.getTeacourseById(teacourseid);
		return teacourse;
	}

	public List<Collection> queryCollectionByName(String collectionname) {
		List<Collection> collections=collectionDao.queryCollectionBycollectionname(collectionname);
		return collections;
	}

	public ArrayList<Collection> queryCollectionByTeacher(Integer userid) {
		List<Collection> collections=collectionDao.queryCollectionByTeacher(userid);
		return (ArrayList<Collection>)collections;		
	}

	
}