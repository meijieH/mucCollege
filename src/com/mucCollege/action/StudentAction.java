package com.mucCollege.action;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.User;
import com.mucCollege.service.AdminService;
import com.mucCollege.service.StudentService;
import com.opensymphony.xwork2.ActionContext;

@Service@Transactional
@Controller@Scope("prototype")
public class StudentAction{
	@Resource StudentService studentService;	
	private User student;
	
	public User getStudent() {
		return student;
	}
	public void setStudent(User student) {
		this.student = student;
	}
	ActionContext actionContext=ActionContext.getContext();
	Map session=actionContext.getSession();
	/*private Map<String,Object> session;
	private String prePage;
    
	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}*/
    //注册
	@SuppressWarnings("unchecked")
	public String register() throws Exception{
		studentService.register(student);
		//session.put("admin",admin);
		return "index";
	}
	//登陆
	@SuppressWarnings("unchecked")
	public String login(){
		User db_student=studentService.CheckLogin(student);
		if(db_student==null){
			return "input";
		}
		else{
			session.put("student",db_student);
			student=(User)session.get("student");
			return "index";	
		}		
	}	
	/*//显示用户信息
	public String showUserInfo(){
		user=(User) session.get("user");
		bookList=bookService.queryAllBook();
		return "show_view";
	}
	//显示要修改的信息
	public String showEdit(){
		bookList=bookService.queryAllBook();
		user=(User) session.get("user");
		return "show_edit";
	}
	//修改用户信息
	public String updateUser(){
		bookList=bookService.queryAllBook();
		userService.update(user);
		return "show_view";
	}
	public String backIndex(){
		user=(User) session.get("user");
		bookList=bookService.queryAllBook();
		return "index";
	}

*/
}
