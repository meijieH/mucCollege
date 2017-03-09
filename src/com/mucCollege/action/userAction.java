package com.mucCollege.action;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Question;
import com.mucCollege.model.Teacourse;
import com.mucCollege.model.User;
import com.mucCollege.service.TeacherService;
import com.mucCollege.service.TeacourseService;
import com.mucCollege.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.sun.xml.internal.bind.v2.model.core.ID;

@Service
@Transactional
@Controller
@Scope("prototype")
public class UserAction {
	@Resource
	UserService userService;
	@Resource
	TeacherService teacherService;
	private User user;
	private String message;
	private String newPassword;
	private Question question;
	private ArrayList<Teacourse> teacouList;
	private ArrayList<Question> queList;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public ArrayList<Question> getQueList() {
		return queList;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public void setQueList(ArrayList<Question> queList) {
		this.queList = queList;
	}

	public ArrayList<Teacourse> getTeacouList() {
		return teacouList;
	}

	public void setTeacouList(ArrayList<Teacourse> teacouList) {
		this.teacouList = teacouList;
	}

	ActionContext actionContext = ActionContext.getContext();
	@SuppressWarnings("rawtypes")
	Map session = actionContext.getSession();

	/**
	 * 登陆login
	 * 
	 * @return
	 * @throws Exception 
	 */
	@SuppressWarnings("unchecked")
	public String login() throws Exception {
		user = userService.queryUserByUsernum(user.getUsernum());
		if (user == null) {
			// setMessage("学工号不存在");
			return "login";
			//return null;
		}
		if (!user.getPassword().endsWith(user.getPassword())) {
			// setMessage("学工号或密码错误");
			return "login";
			//return null;
		}
		session.put("user", user);
		if (user.getUsertype().getUsertypeid() == 1) {
			System.out.println(user.getUsertype().getUsertypeid());
			return "admin";
		} else if (user.getUsertype().getUsertypeid() == 2) {
			System.out.println(user.getUsertype().getUsertypeid());
			teacouList=teacherService.queryMyCourses(user.getUserid());
			session.put("teacourselist", teacouList);
			return "teacher";
		} else {
			System.out.println(user.getUsertype().getUsertypeid());
			return "student";
		}
	}

	/**
	 * 注册register
	 * 
	 * @return
	 */
	public String register() {
		try {
			userService.register(user);
		} catch (Exception e) {
			setMessage(e.getMessage());
			return "register";
		}
		return "login";
	}

	/**
	 * 修改及密码-->改为验证方式
	 * 
	 * @return
	 * @throws Exception
	 */

	public String toUpdatePassword() {
		user=(User)session.get("user");
		return "updatePassword";
	}
	public String updatePassword() throws Exception{
		user=(User)session.get("user");
		user.setPassword(newPassword);
		userService.update(user);
		return "show_view";
	}
	/**
	 * 显示用户信息
	 * 
	 * @return
	 */
	public String showInfo() {
		user = (User) session.get("user");
		return "show_view";
	}

	/**
	 * 显示要修改的信息
	 * 
	 * @return
	 * @throws Exception
	 */
	public String showEdit() throws Exception {
		user = (User) session.get("user");
		return "show_edit";
	}

	/**
	 * 修改用户信息
	 * 
	 * @return
	 * @throws Exception
	 */
	public String updateUser() throws Exception {
		userService.update(user);
		return "show_view";
	}

	/**
	 * 回到首页
	 * 
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public String backIndex() throws Exception {
		user = (User) session.get("user");
		teacouList=teacherService.queryMyCourses(user.getUserid());
		System.out.print(teacherService==null);
		System.out.print(teacouList==null);
		session.put("teacourselist", teacouList);
		return "teacher";
	}

	/**
	 * 退出
	 * 
	 * @return
	 * @throws Exception
	 */
	public String exit() throws Exception {
		session.remove("user");
		return "login";
	}

	/**
	 * 显示消息
	 * 
	 * @return
	 */
	public String showMessage() {
		User user = (User) session.get("user");
		return "message";
	}
}
