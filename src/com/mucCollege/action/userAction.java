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

@Service@Transactional
@Controller@Scope("prototype")
public class userAction {
	@Resource UserService userService;
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
	ActionContext actionContext=ActionContext.getContext();
	@SuppressWarnings("rawtypes")
	Map session=actionContext.getSession();
	
	@SuppressWarnings("unchecked")
	public String login(){
		try{
			User result=userService.queryUserByUsernum(user.getUsernum());
			if(result==null){
				setMessage("用户名不存在");
				return "login";
			}
			if(!user.getPassword().endsWith(result.getPassword())){
				setMessage("用户名或密码错误");
				return "login";
			}
			session.put("user",result);
		}catch(Exception e){
			setMessage(e.getMessage());
			return "login";
		}
		//session.put("user", user);
		if(user.getUsertype().getUsertypeid()==1){
			System.out.println(user.getUsertype().getUsertypeid());
			return "admin";
		}
		else if(user.getUsertype().getUsertypeid()==2){
			System.out.println(user.getUsertype().getUsertypeid());
			return "teacher";
		}
		else{
			System.out.println(user.getUsertype().getUsertypeid());
			return "student";
		}
	}
	

}
