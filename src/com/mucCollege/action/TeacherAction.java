package com.mucCollege.action;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Collection;
import com.mucCollege.model.Course;
import com.mucCollege.model.Coustudent;
import com.mucCollege.model.Question;
import com.mucCollege.model.StuClass;
import com.mucCollege.model.Teacourse;
import com.mucCollege.model.User;
import com.mucCollege.service.CoustudentService;
import com.mucCollege.service.ErrorqueService;
import com.mucCollege.service.StuClassService;
import com.mucCollege.service.StudentService;
import com.mucCollege.service.TeacherService;
import com.opensymphony.xwork2.ActionContext;

@Service
@Transactional
@Controller
@Scope("prototype")
public class TeacherAction {
	@Resource
	TeacherService teacherService;
	@Resource
	CoustudentService coustudentService;
	@Resource
	ErrorqueService errorqueService;
	@Resource
	StuClassService stuClassService;
	// 学生
	private User user;
	private Question question;
	private Collection collection;
	private Course course;
	private Teacourse teacourse;
	private StuClass stuClass;
	private ArrayList<Question> queList;
	private ArrayList<Course> couList;
	private ArrayList<Teacourse> teacouList;
	private ArrayList<Coustudent> couStuList;
	private ArrayList<StuClass> stuClaList;
	private String coursename;
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public Collection getCollection() {
		return collection;
	}

	public void setCollection(Collection collection) {
		this.collection = collection;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Teacourse getTeacourse() {
		return teacourse;
	}

	public void setTeacourse(Teacourse teacourse) {
		this.teacourse = teacourse;
	}

	public StuClass getStuClass() {
		return stuClass;
	}

	public void setStuClass(StuClass stuClass) {
		this.stuClass = stuClass;
	}

	public ArrayList<Question> getQueList() {
		return queList;
	}

	public void setQueList(ArrayList<Question> queList) {
		this.queList = queList;
	}

	public ArrayList<Course> getCouList() {
		return couList;
	}

	public void setCouList(ArrayList<Course> couList) {
		this.couList = couList;
	}
	
	public ArrayList<Teacourse> getTeacouList() {
		return teacouList;
	}

	public void setTeacouList(ArrayList<Teacourse> teacouList) {
		this.teacouList = teacouList;
	}

	public ArrayList<Coustudent> getCouStuList() {
		return couStuList;
	}

	public void setCouStuList(ArrayList<Coustudent> couStuList) {
		this.couStuList = couStuList;
	}

	public ArrayList<StuClass> getStuClaList() {
		return stuClaList;
	}

	public void setStuClaList(ArrayList<StuClass> stuClaList) {
		this.stuClaList = stuClaList;
	}

	public String getCoursename() {
		return coursename;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	// 获取session
	ActionContext actionContext = ActionContext.getContext();
	Map session = actionContext.getSession();

	public String showMessage() {
		User user = (User) session.get("user");
		return "message";
	}

	/*
	 * public String showMyError(){ User user=(User)session.get("user"); errList
	 * err=errorqueService. return "myError"; }
	 */
	// 添加题目
	public String toAddQuestion() {
		User user = (User) session.get("user");
		return "addQuestion";
	}

	public String addQuestion() throws Exception {
		User user = (User) session.get("user");
		question.setUser(user);
		teacherService.addQuestion(question);
		
		collection.setQuestion(question);
		collection.setUser(user);
		teacherService.addCollection(collection);
		
		queList = teacherService.showAllQuestion();
		return "all_question";
	}

	// 显示所有题目
	public String showAllQuestion() {
		User user = (User) session.get("user");
		queList = teacherService.showAllQuestion();
		return "all_question";
	}

	// 显示我添加的所有题目
	public String showMyQuestions() {
		User user = (User) session.get("user");
		queList = teacherService.showMyQuestions(user.getUserid());
		return "my_question";
	}

	// 显示每道题的信息
	public String showQuestion() {
		User user = (User) session.get("user");
		//System.out.println(question == null);
		//System.out.println(teacherService==null);
		System.out.print(question.getQuestionid());
		question = teacherService.showQuestion(question.getQuestionid());
		System.out.println(question==null);
		return "show_question";
	}
	public String toAddCourse(){
		user=(User)session.get("user");
		//System.out.println(course.getCourseid());
		//System.out.println(teacherService==null);
		course=teacherService.queryCourseById(course.getCourseid());
		stuClaList=stuClassService.queryClassByDept(user.getDept().getDeptid());
		return "add_Course";
	}
	public String addCourse() throws Exception{
		user=(User)session.get("user");
		System.out.println(course.getCourseid());
		course=teacherService.queryCourseById(course.getCourseid());
		teacourse.setCourse(course);
		teacourse.setUser(user);
		teacourse.setStuClass(stuClass);
		teacourse.setState("正在审核");
		teacherService.addTeacourse(teacourse);
		teacouList=teacherService.queryMyCourses(user.getUserid());
		//teacherService.addCourse(course);
		return "view_mycourse";
	}
	//查看我的课程
	public String getMyCourse() throws Exception{
		user=(User)session.get("user");
		teacouList=teacherService.queryMyCourses(user.getUserid());
		System.out.print(teacouList==null);
		return "view_mycourse";
	}
	//查看某一课程
	public String showCourse(){
		teacherService.queryCourseById(course.getCourseid());
		return "view_course";
	}
	//检索课程
	public String getCoursesByName() throws Exception{
		couList=teacherService.queryCourse(coursename);
		return "all_course";
	}
	//查看全部课程
	public String getAllCourses(){
		couList=teacherService.showAllCourses();
		return "all_course";
	}
	//修改课程
	public String showEditCourse(){
		teacherService.queryCourseById(course.getCourseid());
		return "edit_course";
	}
	public String updateCourse(){
		teacherService.updateCourse(course);
		return "view_course";
	}
}