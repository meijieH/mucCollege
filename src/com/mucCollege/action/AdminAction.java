package com.mucCollege.action;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Course;
import com.mucCollege.model.Dept;
import com.mucCollege.model.Question;
import com.mucCollege.model.User;
import com.mucCollege.service.AdminService;
import com.opensymphony.xwork2.ActionContext;

@Service@Transactional
@Controller@Scope("prototype")
public class AdminAction{
	@Resource AdminService adminService;
	//管理员 
	private User admin;	
	public User getAdmin() {
		return admin;
	}
	public void setAdmin(User admin) {
		this.admin = admin;
	}
	//学生
	private User student;		
	public User getStudent() {
		return student;
	}
	public void setStudent(User student) {
		this.student = student;
	}
	//教师
	private User teacher;	
	public User getTeacher() {
		return teacher;
	}
	public void setTeacher(User teacher) {
		this.teacher = teacher;
	}	
	//所有学生
	private ArrayList<User> studentList;	
	public ArrayList<User> getStudentList() {
		return studentList;
	}
	public void setStudentList(ArrayList<User> studentList) {
		this.studentList = studentList;
	}
	//所有教师
	private ArrayList<User> teacherList;	
	public ArrayList<User> getTeacherList() {
		return teacherList;
	}
	public void setTeacherList(ArrayList<User> teacherList) {
		this.teacherList = teacherList;
	}
	//试题
	private Question question;	
	public Question getQuestion() {
		return question;
	}
	public void setQuestion(Question question) {
		this.question = question;
	}
	//所以试题
	private ArrayList<Question> questionList;	
	public ArrayList<Question> getQuestionList() {
		return questionList;
	}
	public void setQuestionList(ArrayList<Question> questionList) {
		this.questionList = questionList;
	}
	//课程
	private Course course;
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	//学院
	private Dept dept;
	public Dept getDept() {
		return dept;
	}
	public void setDept(Dept dept) {
		this.dept = dept;
	}
	
	//获取session
	ActionContext actionContext=ActionContext.getContext();
	Map session=actionContext.getSession();	
	//1.对管理员的操作**********
    //注册
	@SuppressWarnings("unchecked")
	public String register() throws Exception{
		adminService.register(admin);
		return "input";
	}
	//登陆
	@SuppressWarnings("unchecked")
	public String login(){
		User db_admin=adminService.CheckLogin(admin);
		if(db_admin==null){
			return "input";
		}
		else{
			session.put("admin",db_admin);
			admin=(User)session.get("admin");
			return "index";	
		}		
	}	
	//显示管理员信息
	public String showAdminInfo(){
		admin=(User)session.get("admin");
		return "show_info";
	}	
	//修改用户信息
	public String showEdit(){
		admin=(User)session.get("admin");
		return "show_edit";
	}
	public String updateAdmin(){
		adminService.update(admin);
		return "show_info";
	}
	//回到首页
	public String backIndex(){
		admin=(User)session.get("admin");
		return "index";
	}
		
	//2.对学生和教师信息的操作**********
	//增加用户
	public String addStudent(){
		adminService.addStudent(student);
		return "view_student";
	}
	public String addTeacher() throws Exception{
		adminService.addTeacher(teacher);
		return "view_teacher";
	}
	//显示所有学生、教师信息
	public String showAllStudent(){
		studentList=adminService.showAllStudent();
		return "all_student";
	}
	public String showAllTeacher(){
		teacherList=adminService.showAllTeacher();
		return "all_teacher";
	}
	//显示单个学生/教师信息：只传一个id进来
	public String showStudent() throws Exception{
		student=adminService.showStudentInfo(student.getUserid());
		return "view_student";
	}
	public String showTeacher() throws Exception{
		teacher=adminService.showTeacherInfo(teacher.getUserid());
		return "view_teacher";
	}
	//修改用户信息
	public String showStudentEditInfo(){
		student=adminService.showStudentInfo(student.getUserid());
		return "edit_student";
	}
	public String showTeacherEditInfo(){
		teacher=adminService.showTeacherInfo(teacher.getUserid());
		return "edit_teacher";
	}
	public String updateStudent() throws Exception{
		adminService.updateStudent(student);
		return "view_student";
	}
	public String updateTeacher() throws Exception{
		adminService.updateTeacher(teacher);
		return "view_teacher";
	}	
	
	//3.针对试题的操作**********
	//增加试题
	public String addQuestion(){
		adminService.addQuestion(question);
		return "view_question";
	}
	//显示所有题目
	public String showAllQuestion(){
		System.out.println("全部");
		questionList=adminService.showAllQuestion();
		return "all_question";
	}
	//显示每道题的信息
	public String showQuestion(){
		question=adminService.showQuestion(question.getQuestionid());
		return "view_question";
	}
	//修改题目
	public String showEditQuestion(){
		question=adminService.showQuestion(question.getQuestionid());
		return "edit_question";
	}
	public String updateQuestion(){
		adminService.updateQuestion(question);
		return "view_question";
	}
	/*//删除题目
	public String deleteQuestion(){
		adminService.deleteQuestion(question.getQuestionid());
		return "de_question";
	}*/
	//4.针对课程的操作**********
	//增加课程
	public String addCourse(){
		adminService.addCourse(course);
		return "view_course";
	}
	//查看课程
	public String showCourse(){
		adminService.showCourse(course.getCourseid());
		return "view_course";
	}
	//修改课程
	public String showEditCourse(){
		adminService.showCourse(course.getCourseid());
		return "edit_course";
	}
	public String updateCourse(){
		adminService.updateCourse(course);
		return "view_course";
	}
	/*//删除课程
	public String deleteCourse(){
		adminService.deleteCourse(course.getCourseid());
		return "de_course";
	}*/
	//5.针对学院的操作**********
	//增加学院
	public String addDept() throws Exception{
		adminService.addDept(dept);
		return "view_dept";
	}
	//查看学院
	public String showDept(){
		adminService.showDept(dept.getDeptid());
		return "edit_dept";
	}
	//修改学院信息
	public String showEditDept(){
		adminService.showDept(dept.getDeptid());
		return "edit_dept";
	}
	public String updateDept() throws Exception{
		adminService.updateDept(dept);
		return "view_course";
	}
	/*//删除学院
	public String deleteDept() throws Exception{
		adminService.deleteDept(dept.getDeptid());
		return "de_course";
	}*/
}
//针对所有对象的删除都没写
//addCourse有问题