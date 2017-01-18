package com.mucCollege.service;

import java.util.ArrayList;
import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.dao.AdminDao;
import com.mucCollege.dao.CourseDao;
import com.mucCollege.dao.DeptDao;
import com.mucCollege.dao.QuestionDao;
import com.mucCollege.dao.UserDao;
import com.mucCollege.model.Course;
import com.mucCollege.model.Dept;
import com.mucCollege.model.Question;
import com.mucCollege.model.User;

@Service@Transactional
public class AdminService extends UserService{
	@Resource SessionFactory factory;
	@Resource AdminDao adminDao;
	@Resource UserDao userDao;
	@Resource QuestionDao questionDao;
	@Resource CourseDao courseDao;
	@Resource DeptDao deptDao;
	
	private String errMessage;
	
	public String getErrMessage() {
		return errMessage;
	}
	public void setErrMessage(String errMessage) {
		this.errMessage = errMessage;
	}
	//1.对管理的操作**********
	//注册
	public void register(User admin) throws Exception{
		adminDao.addUser(admin);
	}
	//登陆及验证：登陆用户名、密码格式放在jsp里验证
	@Transactional(propagation=Propagation.NOT_SUPPORTED) 
	public User CheckLogin(User admin){
		ArrayList<User> adminList=adminDao.QueryAdmin((admin.getUsername()));
		if(adminList.size()==0) { 
			this.errMessage = "用户名不存在";
			System.out.print(this.errMessage);
			return null;
		} else{
			User db_admin=adminList.get(0);
			if( !db_admin.getPassword().equals(admin.getPassword())) {
			this.errMessage = "密码不正确！";
			System.out.print(this.errMessage);
			return null;
			}
			else{
				return db_admin;
			}
		}		
	}
	//修改管理员信息
	public void update(User admin) throws Exception{
		adminDao.updateUser(admin);
	}
	//显示管理员信息
	public User showUserInfo(int adminid){
		User db_admin=adminDao.GetAdminById(adminid);
		return db_admin;
	}
	
	//2.对学生/教师的操作**********
	//增加用户
    public void addStudent(User student) throws Exception{
    	userDao.addUser(student);
    }    
    public void addTeacher(User teacher) throws Exception{
    	userDao.addUser(teacher);
    }
	//显示所有用户信息
	public ArrayList<User> showAllStudent(){
		ArrayList<User> studentList=userDao.QueryAllStudent();
		return studentList;
	}
	public ArrayList<User> showAllTeacher(){
		ArrayList<User> teacherList=userDao.QueryAllTeacher();
		return teacherList;
	}
	//显示单个用户信息
	public User showStudentInfo(int studentid){
		User db_student=userDao.QueryUserById(studentid);
		return db_student;
	}
	public User showTeacherInfo(int teacherid){
		User db_teacher=userDao.QueryUserById(teacherid);
		return db_teacher;
	}
	//修改单个用户信息
	public void updateStudent(User student) throws Exception{
		userDao.updateUser(student);
	}
	public void updateTeacher(User teacher) throws Exception{
		userDao.updateUser(teacher);
	}
	//删除用户
	public void deleteStudent(int studentid) throws Exception{
		userDao.deleteUser(studentid);
	}
	public void deleteTeacher(int teacherid) throws Exception{
		userDao.deleteUser(teacherid);
	}
	//3.对题目的操作**********
	//增加题目
	public void addQuestion(Question question){
		questionDao.addQuestion(question);
	}
	//查看所有题目
	public ArrayList<Question> showAllQuestion(){
		ArrayList<Question> questionList= questionDao.QueryAllQuestion();
		return questionList;
	}
	//查看问题
	public Question showQuestion(int questionid){
		Question db_question=questionDao.GetQuestionById(questionid);
		return db_question;
	}	
	//修改题目
	public void updateQuestion(Question question){
		questionDao.updateQuestion(question);
	}
	//删除题目
	public void deleteQuestion(int questionid){
		questionDao.deleteQuestion(questionid);
	}
	//4.对课程的操作**********
	//增加课程
	public void addCourse(Course course){
		courseDao.addCourse(course);
	}
	//查看课程
	public Course showCourse(int courseid){
		Course db_course=courseDao.GetCourseById(courseid);
		return db_course;
	}
	//修改课程
	public void updateCourse(Course course){
		courseDao.updateCourse(course);
	}
	//删除课程
	public void deleteCourse(int courseid){
		courseDao.deleteCourse(courseid);
	}

	// 5.对学院的操作**********
	// 增加课程
	public void addDept(Dept dept) throws Exception {
		deptDao.addDept(dept);
	}

	// 查看课程
	public Dept showDept(int deptid) {
		Dept db_dept = deptDao.GetDeptById(deptid);
		return db_dept;
	}

	// 修改课程
	public void updateDept(Dept dept) throws Exception {
		deptDao.updateDept(dept);
	}

	// 删除课程
	public void deleteDept(int deptid) throws Exception {
		deptDao.deleteDept(deptid);
	}	
}
