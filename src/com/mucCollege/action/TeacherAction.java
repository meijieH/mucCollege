package com.mucCollege.action;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.mucCollege.model.User;
import com.mucCollege.service.TeacherService;
import com.opensymphony.xwork2.Action;


@Controller
@Scope("prototype")
public class TeacherAction implements Action ,SessionAware{
	@Resource TeacherService service;
	private User teacher;
	private String message;
	private Map<String, Object> session;
	public String execute(){
		return null;
	}
	public String register() {

		try {
			service.add(teacher);
		} catch (Exception e) {
			setMessage(e.getMessage());
			return "register";
		}
		return "index";
	}
	public String login(){
		try{
//			测试输出：可以输出
			System.out.println(teacher.getUsernum()+" "+teacher.getPassword());
			User result=service.queryUserByUsernum(teacher.getUsernum());
			if(result==null){
				setMessage("用户名不存在");
				System.out.println("用户不存在");
				return "login";
			}
			if(!teacher.getPassword().endsWith(result.getPassword())){
				setMessage("用户名或密码错误");
				System.out.println("用户名或密码错误");
				return "login";
			}
			session.put("user",result);
		}catch(Exception e){
			setMessage(e.getMessage());
			System.out.println("出现异常"+e.getMessage());
			return "login";
		}
		System.out.println("成功登陆");
		return "index";
	}
	public String logout(){
		session.clear();
		return "login";
	}
	//以下为自动生成的set与get方法，无需维护
	public void setUser(User user) {
		teacher = user;
	}
	public User getUser() {
		return teacher;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}
}