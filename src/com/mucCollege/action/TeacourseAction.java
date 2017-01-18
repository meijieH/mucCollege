package com.mucCollege.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.mucCollege.model.Course;
import com.mucCollege.model.StuClass;
import com.mucCollege.model.Teacourse;
import com.mucCollege.model.User;
import com.mucCollege.service.TeacourseService;
import com.opensymphony.xwork2.Action;

@Controller
@Scope("prototype")
public class TeacourseAction implements Action ,SessionAware{
	@Resource TeacourseService teacourseService;
	private Map<String, Object> session;
	private String message;
	private List<Teacourse> teacourselist;
	private List<Course> courselist;
	private List<StuClass> stuClasslist;
	private Teacourse teacourse;
	public String execute(){
		return null;
	}
	public String list(){
		try {
			teacourselist=teacourseService.teacourselist((User) session.get("user"));
			courselist=teacourseService.courselist();
			stuClasslist=teacourseService.stuClasslist();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "courselist";
	}
	public String register(){
		teacourse.setUser((User) session.get("user"));
		teacourse.setState("待审批");
		try {
			teacourseService.register(teacourse);
			setMessage("课程注册成功");
		} catch (Exception e) {
			setMessage("课程注册失败，异常信息："+e.getMessage());
			e.printStackTrace();
		}
		return list();
	}
	public String apply(){
		Course course=teacourse.getCourse();
		course.setState("待审批");
		course.setDept(((User)session.get("user")).getDept());
		teacourse.setUser((User) session.get("user"));
		teacourse.setState("待审批");
		try {
			teacourseService.apply(teacourse);
		} catch (Exception e) {
			setMessage("课程注册失败，异常信息："+e.getMessage());
			e.printStackTrace();
		}
		return list();
	}
	public String course(){
		try {
			teacourse=teacourseService.getTeacourseById(teacourse.getTeacourseid());
		} catch (Exception e) {
			setMessage(e.getMessage());
			e.printStackTrace();
		}
		return "course";
	}
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}
	public List<Teacourse> getTeacourselist() {
		return teacourselist;
	}
	public void setTeacourselist(List<Teacourse> teacourselist) {
		this.teacourselist = teacourselist;
	}
	public List<Course> getCourselist() {
		return courselist;
	}
	public void setCourselist(List<Course> courselist) {
		this.courselist = courselist;
	}
	public List<StuClass> getStuClasslist() {
		return stuClasslist;
	}
	public void setStuClasslist(List<StuClass> stuClasslist) {
		this.stuClasslist = stuClasslist;
	}
	public Teacourse getTeacourse() {
		return teacourse;
	}
	public void setTeacourse(Teacourse teacourse) {
		this.teacourse = teacourse;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}