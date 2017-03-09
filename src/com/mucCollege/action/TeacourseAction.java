package com.mucCollege.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Course;
import com.mucCollege.model.StuClass;
import com.mucCollege.model.Teacourse;
import com.mucCollege.model.User;
import com.mucCollege.service.TeacourseService;
import com.opensymphony.xwork2.Action;

@Service@Transactional
@Controller@Scope("prototype")
public class TeacourseAction{
	@Resource TeacourseService teacourseService;
	private List<Teacourse> teacourselist;
	private List<Course> courselist;
	private List<StuClass> stuClasslist;
	private Teacourse teacourse;
	
	
	
}