package com.mucCollege.action;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Coustudent;
import com.mucCollege.model.Question;
import com.mucCollege.model.User;
import com.mucCollege.service.CoustudentService;
import com.mucCollege.service.ErrorqueService;
import com.mucCollege.service.StudentService;
import com.opensymphony.xwork2.ActionContext;

@Service@Transactional
@Controller@Scope("prototype")
public class TeacherAction{
	@Resource StudentService studentService;
	@Resource CoustudentService coustudentService;
	@Resource ErrorqueService errorqueService;
	//学生
	private User user;		
	private ArrayList <Question> queList;
	private ArrayList<Coustudent> couList;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public ArrayList<Question> getQueList() {
		return queList;
	}
	public void setQueList(ArrayList<Question> queList) {
		this.queList = queList;
	}
	public ArrayList<Coustudent> getCouList() {
		return couList;
	}
	public void setCouList(ArrayList<Coustudent> couList) {
		this.couList = couList;
	}
	//获取session
	ActionContext actionContext=ActionContext.getContext();
	Map session=actionContext.getSession();	
	
	public String showInfo(){
		System.out.println(studentService==null);
		User user=(User)session.get("user");
		return "show_view";
	}
	public String showMessage(){
		User user=(User)session.get("user");
		return "message";
	}
	/*public String showMyError(){
		User user=(User)session.get("user");
		errList err=errorqueService.
		return "myError";
	}*/
}