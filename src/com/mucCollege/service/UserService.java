package com.mucCollege.service;

import java.util.ArrayList;
import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.dao.CourseDao;
import com.mucCollege.dao.DeptDao;
import com.mucCollege.dao.QuestionDao;
import com.mucCollege.dao.UserDao;
import com.mucCollege.dao.UsertypeDao;
import com.mucCollege.model.Course;
import com.mucCollege.model.Question;
import com.mucCollege.model.User;

@Service
@Transactional
public class UserService {
	@Resource
	SessionFactory factory;
	@Resource
	UserDao userDao;
	@Resource
	QuestionDao questionDao;
	@Resource
	CourseDao courseDao;
	@Resource
	DeptDao deptDao;
	@Resource
	UsertypeDao usertypeDao;
	private String errMessage;

	public String getErrMessage() {
		return errMessage;
	}

	public void setErrMessage(String errMessage) {
		this.errMessage = errMessage;
	}

	// 注册
	public void register(User user) throws Exception {
		user.setUsertype(usertypeDao.getUsertype(3));
		userDao.addUser(user);
	}

	// 登陆及验证：登陆用户名、密码格式放在jsp里验证
	@Transactional(propagation = Propagation.NOT_SUPPORTED)
	public User CheckLogin(User user) {
		ArrayList<User> userList = userDao.QueryUserByUsername(user
				.getUsername());
		if (userList.size() == 0) {
			this.errMessage = "用户名不存在";
			System.out.print(this.errMessage);
			return null;
		} else {
			User db_user = userList.get(0);
			if (!db_user.getPassword().equals(user.getPassword())) {
				this.errMessage = "密码不正确！";
				System.out.print(this.errMessage);
				return null;
			} else {
				return db_user;
			}
		}
	}

	// 修改学生信息
	public void update(User user) throws Exception {
		userDao.updateUser(user);
	}

	// 显示学生信息
	public User showUserInfo(User user) {
		User db_user = userDao.QueryUserByUsername(user.getUsername()).get(0);
		return db_user;
	}

	// 根据学工号查询用户
	public User queryUserByUsernum(String usernum) {
		User db_user = userDao.QueryUserByUsernum(usernum);
		return db_user;
	}

	// 3.对题目的操作**********
	// 增加题目
	public void addQuestion(Question question) {
		questionDao.addQuestion(question);
	}

	// 查看所有题目
	public ArrayList<Question> showAllQuestion() {
		ArrayList<Question> questionList = questionDao.QueryAllQuestion();
		return questionList;
	}
	
	//查看我添加的题目
	public ArrayList<Question> showMyQuestions(int userid){
		ArrayList<Question> questionList =questionDao.QueryQuestionByAdder(userid);
		return questionList;
	}

	public Question showQuestion(int questionid) {
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
	public void addCourse(Course course) {
		courseDao.addCourse(course);
	}

	// 查看课程
	public Course showCourse(int courseid) {
		Course db_course = courseDao.GetCourseById(courseid);
		return db_course;
	}

	// 修改课程
	public void updateCourse(Course course) {
		courseDao.updateCourse(course);
	}
}