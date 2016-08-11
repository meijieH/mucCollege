package com.mucCollege.action;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.mucCollege.model.User;
import com.mucCollege.service.ServiceMessage;
import com.mucCollege.service.TeacherService;

/**
 * 注册register
 * 登陆login
 * 登出logout
 * 修改updata
 * 此类提供了Teacher的注册，登陆，修改，登出操作，提供了session会话，校验器，详细的使用方式可以参考为该类编写的测试页面teacherActionTest.jsp
 * 同目录下的3个TeacherAction*.xml用于校验器检验
 * @author 杨赟
 * 修改该版本的日期:7/17
 */
@Controller
@Scope("prototype")
@SuppressWarnings("serial")
public class TeacherAction extends SuperAction implements SessionAware{
	@Resource TeacherService teacherService;
	private User teacher;
	/**
	 * 默认的主方法，当请求action是定义之外的内容，将不会显示错误而是跳转到teacher的主页
	 */
	@Override
	public String execute() throws Exception {
		return "index";
	}
	/**
	 * 注册方法
	 * 调用此方法表单需要填写字段 teanum name password position intro email phonenum
	 * @return 注册成功返回RegSuccess 失败返回RegFail 详细原因请查看message变量
	 * @throws Exception
	 */
	public String register() throws Exception{
		ServiceMessage re=teacherService.register(teacher);
		message=re.getMessage();
		return re.getResult();
	}
	
	/**
	 * 登陆方法
	 * 调用此方法表单需要填写字段 teanum password
	 * @return 登陆成功返回LoginSuccess 失败返回LoginFail 详细原因请查看message变量
	 * @throws Exception
	 */
	public String login() throws Exception{
		ServiceMessage re=teacherService.login(teacher);
		message=re.getMessage();
		return re.getResult();   
	}
	
	/**
	 * 登出方法
	 * 调用此方法表单无需填写任何字段，该方法目前只会返回LogoutSuccess
	 * @return 登出成功返回LogoutSuccess 失败返回LogoutFail 详细原因请查看message变量
	 * @throws Exception
	 */
	public String logout() throws Exception{
		ServiceMessage re=teacherService.logout();
		message=re.getMessage();
		return re.getResult();
	}
	
	/**
	 * 修改方法
	 * 调用此方法前要成功登陆，如果没有登陆，调用此方法只会直接返回UpdataFail
	 * 此方法可选填写字段 password position intro email phonenum，没有填写的字段将保持原数据不会被更改，其他字段不被允许修改
	 * @return 修改成功返回UpdataSuccess 失败返回UpdataFail 详细原因请查看message变量
	 */
	public String updata() throws Exception{
		ServiceMessage re=teacherService.updata(teacher);
		message=re.getMessage();
		return re.getResult();
	}
	
	//以下为setter与getter，仅用于数据的采集
	public void setSession(Map<String, Object> session) {
		teacherService.setSession(session);
	}
	public User getTeacher() {
		return teacher;
	}
	public void setTeacher(User teacher) {
		this.teacher = teacher;
	}
}