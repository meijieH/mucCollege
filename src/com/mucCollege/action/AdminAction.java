package com.mucCollege.action;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.mucCollege.model.Admin;
import com.mucCollege.model.Course;
import com.mucCollege.model.Question;
import com.mucCollege.model.Student;
import com.mucCollege.model.Teacher;
import com.mucCollege.service.AdminService;
import com.opensymphony.xwork2.ActionContext;

@Service@Transactional
@Controller@Scope("prototype")
public class AdminAction{
	@Resource AdminService adminService;
	//管理员 
	private Admin admin;	
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	//学生
	private Student student;		
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	//教师
	private Teacher teacher;	
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}	
	//所有学生
	private ArrayList<Student> studentList;	
	public ArrayList<Student> getStudentList() {
		return studentList;
	}
	public void setStudentList(ArrayList<Student> studentList) {
		this.studentList = studentList;
	}
	//所有教师
	private ArrayList<Teacher> teacherList;	
	public ArrayList<Teacher> getTeacherList() {
		return teacherList;
	}
	public void setTeacherList(ArrayList<Teacher> teacherList) {
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
	//课程
	private Course course;
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
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
		Admin db_admin=adminService.CheckLogin(admin);
		if(db_admin==null){
			return "input";
		}
		else{
			session.put("admin",db_admin);
			admin=(Admin)session.get("admin");
			return "index";	
		}		
	}	
	//显示管理员信息
	public String showAdminInfo(){
		admin=(Admin)session.get("admin");
		return "show_info";
	}	
	//修改用户信息
	public String showEdit(){
		admin=(Admin)session.get("admin");
		return "show_edit";
	}
	public String updateAdmin(){
		adminService.update(admin);
		return "show_info";
	}
	//回到首页
	public String backIndex(){
		admin=(Admin)session.get("admin");
		return "index";
	}
		
	//2.对学生和教师信息的操作**********
	//增加用户
	public String addStudent(){
		adminService.addStudent(student);
		return "add_student";
	}
	public String addTeacher() throws Exception{
		adminService.addTeacher(teacher);
		return "add_teacher";
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
		student=adminService.showStudentInfo(student.getStudentid());
		return "view_student";
	}
	public String showTeacher() throws Exception{
		teacher=adminService.showTeacherInfo(teacher.getTeacherid());
		return "view_teacher";
	}
	//修改用户信息
	public String showStudentEditInfo(){
		student=adminService.showStudentInfo(student.getStudentid());
		return "edit_student";
	}
	public String showTeacherEditInfo(Teacher teacher){
		teacher=adminService.showTeacherInfo(teacher.getTeacherid());
		return "edit_teacher";
	}
	public String updateStudent() throws Exception{
		adminService.updateStudent(student);
		return "up_student";
	}
	public String updateTeacher() throws Exception{
		adminService.updateTeacher(teacher);
		return "up_teacher";
	}
	
	//3.针对试题的操作**********
	//增加试题
	public String addQuestion(){
		adminService.addQuestion(question);
		return "add_question";
	}
	//显示每道题的信息
	public String showQuestion(){
		adminService.showQuestion(question.getQuestionid());
		return "show_question";
	}
	//修改题目
	public String showEditQuestion(){
		adminService.showQuestion(question.getQuestionid());
		return "edit_question";
	}
	public String updateQuestion(){
		adminService.updateQuestion(question);
		return "up_question";
	}
	//删除题目
	public String deleteQuestion(){
		adminService.deleteQuestion(question.getQuestionid());
		return "de_question";
	}
	//4.针对课程的操作**********
	//增加课程
	public String addCourse(){
		adminService.addCourse(course);
		return "add_course";
	}
	//查看课程
	public String showCourse(){
		adminService.showCourse(course.getCourseid());
		return "show_course";
	}
	//修改课程
	public String showEditCourse(){
		adminService.showCourse(course.getCourseid());
		return "edit_course";
	}
	public String updateCourse(){
		adminService.updateCourse(course);
		return "up_course";
	}
	//删除课程
	public String deleteCourse(){
		adminService.deleteCourse(course.getCourseid());
		return "de_course";
	}
}
