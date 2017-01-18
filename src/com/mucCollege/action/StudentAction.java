package com.mucCollege.action;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.mucCollege.model.Question;
import com.mucCollege.model.User;
import com.mucCollege.service.StudentService;
import com.opensymphony.xwork2.ActionContext;

@Service@Transactional
@Controller@Scope("prototype")
public class StudentAction{
	@Resource StudentService studentService;
	//学生
	private User student;		
	public User getStudent() {
		return student;
	}
	public void setStudent(User student) {
		this.student = student;
	}	
	//试题
	private Question question;	
	public Question getQuestion() {
		return question;
	}
	public void setQuestion(Question question) {
		this.question = question;
	}
	/*	//所以试题
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
	}*/
	
	//获取session
	ActionContext actionContext=ActionContext.getContext();
	Map session=actionContext.getSession();	
	
    //注册
	@SuppressWarnings("unchecked")
	public String register() throws Exception{	
		studentService.register(student);
		return "input";
	}
	//登陆
	@SuppressWarnings("unchecked")
	public String login(){
		User db_student=studentService.CheckLogin(student);
		if(db_student==null){
			return "input";
		}
		else{
			session.put("student", db_student);
			student=(User)session.get("student");
			return "index";	
		}		
	}	
	//显示学生信息
	public String showStudentInfo(){
		student=(User)session.get("student");
		return "show_info";
	}	
	//修改学生信息
	public String showEdit(){
		student=(User)session.get("student");
		return "show_edit";
	}
	public String updateStudent() throws Exception{
		studentService.update(student);
		return "show_info";
	}
	//回到首页
	public String backIndex(){
		student=(User)session.get("student");
		return "index";
	}	
}