package com.mucCollege.action;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.User;
import com.mucCollege.service.UserService;
import com.opensymphony.xwork2.ActionContext;

@Service
@Transactional
@Controller
@Scope("prototype")
public class UserAction {
	@Resource
	UserService userService;
	private User user;
	private String message;

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

	ActionContext actionContext = ActionContext.getContext();
	@SuppressWarnings("rawtypes")
	Map session = actionContext.getSession();

	/**
	 * 登陆login
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String login() {
		try {
			user = userService.queryUserByUsernum(user.getUsernum());
			if (user == null) {
				setMessage("用户名不存在");
				return "login";
			}
			if (!user.getPassword().endsWith(user.getPassword())) {
				setMessage("用户名或密码错误");
				return "login";
			}
			session.put("user",user);
		} catch (Exception e) {
			setMessage(e.getMessage());
			return "login";
		}
		if (user.getUsertype().getUsertypeid() == 1) {
			System.out.println(user.getUsertype().getUsertypeid());
			return "admin";
		} else if (user.getUsertype().getUsertypeid() == 2) {
			System.out.println(user.getUsertype().getUsertypeid());
			return "teacher";
		} else {
			System.out.println(user.getUsertype().getUsertypeid());
			return "student";
		}
	}

	/**
	 * 注册register
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
	 * @return
	 * @throws Exception
	 */
	public String updatePassword() throws Exception {
		userService.update(user);
		return "show_view";
	}

	/**
	 * 显示用户信息
	 * @return
	 */
	public String showInfo() {
		user = (User) session.get("user");
		return "show_view";
	}

	/**
	 * 显示要修改的信息
	 * @return
	 * @throws Exception
	 */
	public String showEdit() throws Exception{
		user = (User) session.get("user");
		return "show_edit";
	}

	/**
	 * 修改用户信息
	 * @return
	 * @throws Exception
	 */
	public String updateUser() throws Exception {
		userService.update(user);
		return "show_view";
	}

	/**
	 * 回到首页
	 * @return
	 * @throws Exception
	 */
	public String backIndex() throws Exception {
		user = (User) session.get("user");
		return "index";
	}
	                                                          
	/**
	 * 退出
	 * @return
	 * @throws Exception
	 */
	public String exit() throws Exception{
		session.remove("user");
		return "login";
	}
}
