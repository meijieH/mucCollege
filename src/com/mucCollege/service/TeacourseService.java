package com.mucCollege.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.dao.CourseDao;
import com.mucCollege.dao.TeacourseDao;
import com.mucCollege.model.Course;
import com.mucCollege.model.Teacher;
import com.mucCollege.model.Teacourse;

@Service
@Transactional
public class TeacourseService {
	@Resource TeacourseDao dao;
	@Resource CourseDao courseDao;
	private Map<String, Object> session;
	public ServiceMessage add(Course course){
		if(courseDao.QueryCourseByName(course.getCoursename())==null){
			try {
				courseDao.addCourse(course);
			} catch (Exception e) {
				return new ServiceMessage("Fail", "DAO异常");
			}
		}
		Teacourse teacourse=new Teacourse((Teacher)session.get("user"), null, course, null, null);
		try {
			dao.addTeacourse(teacourse);
		} catch (Exception e) {
			return new ServiceMessage("Fail", "DAO异常");
		}
		return new ServiceMessage("Success", "课程添加成功");
	}
	public ServiceMessage list(){
		Teacher user=(Teacher) session.get("teacher");
		List<Teacourse> teacourseList=dao.QueryTeacourseByTeacher(user);
		ServiceMessage re=new ServiceMessage("listSuccess","拉取课程信息成功");
		re.setObject(teacourseList);
		return re;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}