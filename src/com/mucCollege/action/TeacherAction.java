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
import com.mucCollege.service.TeacherService;
import com.opensymphony.xwork2.ActionContext;

@Service
@Transactional
@Controller
@Scope("prototype")
public class TeacherAction {
	@Resource
	TeacherService teacherService;
	@Resource
	CoustudentService coustudentService;
	@Resource
	ErrorqueService errorqueService;
	// 学生
	private User user;
	private Question question;
	private ArrayList<Question> queList;
	private ArrayList<Coustudent> couList;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
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

	// 获取session
	ActionContext actionContext = ActionContext.getContext();
	Map session = actionContext.getSession();

	public String showMessage() {
		User user = (User) session.get("user");
		return "message";
	}

	/*
	 * public String showMyError(){ User user=(User)session.get("user"); errList
	 * err=errorqueService. return "myError"; }
	 */
	// 添加题目
	public String toAddQuestion() {
		User user = (User) session.get("user");
		return "addQuestion";
	}

	public String addQuestion() {
		User user = (User) session.get("user");
		teacherService.addQuestion(question);
		return "all_question";
	}

	// 显示所有题目
	public String showAllQuestion() {
		User user = (User) session.get("user");
		queList = teacherService.showAllQuestion();
		return "all_question";
	}

	// 显示我添加的所有题目
	public String showMyQuestions() {
		User user = (User) session.get("user");
		queList = teacherService.showMyQuestions(user.getUserid());
		return "my_question";
	}

	// 显示每道题的信息
	public String showQuestion() {
		User user = (User) session.get("user");
		//System.out.println(question == null);
		//System.out.println(teacherService==null);
		System.out.print(question.getQuestionid());
		question = teacherService.showQuestion(question.getQuestionid());
		System.out.println(question==null);
		return "show_question";
	}
	
	//修改题目
	
}