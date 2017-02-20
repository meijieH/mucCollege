package com.mucCollege.action;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Coustudent;
import com.mucCollege.model.Errorque;
import com.mucCollege.model.User;
import com.mucCollege.service.CoustudentService;
import com.mucCollege.service.ErrorqueService;
import com.mucCollege.service.StudentService;
import com.opensymphony.xwork2.ActionContext;

@Service@Transactional
@Controller@Scope("prototype")
public class StudentAction{
	@Resource StudentService studentService;
	@Resource CoustudentService coustudentService;
	@Resource ErrorqueService errorqueService;
	//学生
	private User student;		
	public User getStudent() {
		return student;
	}
	public void setStudent(User student) {
		this.student = student;
	}	
	//我的课程集
	private ArrayList<Coustudent> couList;
	
	public ArrayList<Coustudent> getCouList() {
		return couList;
	}
	public void setCouList(ArrayList<Coustudent> couList) {
		this.couList = couList;
	}
	
	private ArrayList<Errorque> errList;
	
	public ArrayList<Errorque> getErrList() {
		return errList;
	}
	public void setErrList(ArrayList<Errorque> errList) {
		this.errList = errList;
	}
	//获取session
	ActionContext actionContext=ActionContext.getContext();
	Map session=actionContext.getSession();	
	
	public String showMyCourse(){
		User user=(User)session.get("user");
		//System.out.println(coustudentService==null);
		couList=coustudentService.couByStudentID(user.getUserid());
		return "myCourse";
	}
	/*public String showMyError(){
		User user=(User)session.get("user");
		errList err=errorqueService.
		return "myError";
	}*/
}