package com.mucCollege.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Teacourse;
import com.mucCollege.model.Test;
import com.mucCollege.model.Testpaper;
import com.mucCollege.model.User;
import com.mucCollege.service.TeacourseService;
import com.mucCollege.service.TeatestService;
import com.opensymphony.xwork2.ActionContext;

@Service
@Transactional
@Controller
@Scope("prototype")
public class TeatestAction {
	@Resource
	TeatestService teatestService;
	@Resource
	TeacourseService teacourseService;
	private User user;
	private Teacourse teacourse;
	private List<Test> testlist;
	private Testpaper testpaper;
	private ArrayList<Test> testList;
	private ArrayList<Testpaper> testpaperList;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Teacourse getTeacourse() {
		return teacourse;
	}

	public void setTeacourse(Teacourse teacourse) {
		this.teacourse = teacourse;
	}

	public List<Test> getTestlist() {
		return testlist;
	}

	public void setTestlist(List<Test> testlist) {
		this.testlist = testlist;
	}

	public Testpaper getTestpaper() {
		return testpaper;
	}

	public void setTestpaper(Testpaper testpaper) {
		this.testpaper = testpaper;
	}

	public ArrayList<Test> getTestList() {
		return testList;
	}

	public void setTestList(ArrayList<Test> testList) {
		this.testList = testList;
	}

	public ArrayList<Testpaper> getTestpaperList() {
		return testpaperList;
	}

	public void setTestpaperList(ArrayList<Testpaper> testpaperList) {
		this.testpaperList = testpaperList;
	}

	// 获取session
	ActionContext actionContext = ActionContext.getContext();
	Map session = actionContext.getSession();

	// 查看教师个人试卷库
	public String getMyTestpapers() throws Exception {
		user=(User)session.get("user");
		testpaperList=teatestService.queryTestpaperByCreator(user.getUserid());
		return "my_testpaper";
	}

	// 试题集
	public String getAllTestpapers() {
		testpaperList = teatestService.queryAllPapers();
		return "all_testpaper";
	}

	// 某门课程的对应的考试
	public String getTestpapersByLesson() throws Exception {
		testList = teatestService.queryTestsByLesson(teacourse.getTeacourseid());
		return "lesson_testpapers";
	}
	//查看某张试卷
	public String showTestpaper() throws Exception{
		testpaper=teatestService.getTestpaperById(testpaper.getTestpaperid());
		return "show_testpaper";
	}
}