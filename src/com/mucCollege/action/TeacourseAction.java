package com.mucCollege.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.mucCollege.model.Course;
import com.mucCollege.model.Teacourse;
import com.mucCollege.service.ServiceMessage;
import com.mucCollege.service.TeacourseService;
/**
 * 
 * @author 杨赟
 *
 */
@Controller
@Scope("prototype")
@SuppressWarnings("serial")
public class TeacourseAction extends SuperAction implements SessionAware{
	@Resource TeacourseService teacourseService;
	private List<Teacourse> teacourseList;
	private Course course;
	/**
	 * 默认的主方法，当请求action是定义之外的内容，将不会显示错误而是跳转到teacher的主页
	 */
	@Override
	public String execute() throws Exception {
		return "index";
	}
	/**
	 * 
	 * @return
	 * @throws Exception
	 */
	public String add() throws Exception{
		ServiceMessage re=teacourseService.add(course);
		message=re.getMessage();
		return re.getResult();
	}
	/**
	 * 读取该教师所任课程，并将数据保存到teacourseList中
	 * @return 拉取成功返回listSuccess 请在JSP中读取teacourseList
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public String list() throws Exception{
		ServiceMessage re=teacourseService.list();
		teacourseList=(List<Teacourse>)re.getObject();
		message=re.getMessage();
		return re.getResult();
	}
	
	//以下为setter与getter，仅用于表单数据的采集
	public void setSession(Map<String, Object> session) {
		teacourseService.setSession(session);
	}
	public List<Teacourse> getTeacourseList() {
		return teacourseList;
	}
	public void setTeacourseList(List<Teacourse> teacourseList) {
		this.teacourseList = teacourseList;
	}
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
}