package com.mucCollege.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Teacourse;
import com.mucCollege.model.Test;
import com.mucCollege.model.Testpaper;
import com.mucCollege.service.TeacourseService;
import com.mucCollege.service.TeatestService;
import com.opensymphony.xwork2.Action;

@Service@Transactional
@Controller@Scope("prototype")
public class TeatestAction implements Action {
	@Resource TeatestService teatestService;
	@Resource TeacourseService teacourseService;
	private Teacourse teacourse;
	private List<Test> testlist;
	private Testpaper testpaper;
	public String execute(){
		return null;
	}
	public String testpaper(){
		try {
			testpaper=teatestService.getTestpaperById(testpaper.getTestpaperid());
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		
		return "testpaper";
	}
	public String list(){
		try {
			teacourse=teacourseService.getTeacourseById(teacourse.getTeacourseid());
			testlist=teatestService.testlist(teacourse.getTeacourseid());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "testlist";
	}
	public List<Test> getTestlist() {
		return testlist;
	}
	public void setTestlist(List<Test> testlist) {
		this.testlist = testlist;
	}
	public Teacourse getTeacourse() {
		return teacourse;
	}
	public void setTeacourse(Teacourse teacourse) {
		this.teacourse = teacourse;
	}
	public Testpaper getTestpaper() {
		return testpaper;
	}
	public void setTestpaper(Testpaper testpaper) {
		this.testpaper = testpaper;
	}
}