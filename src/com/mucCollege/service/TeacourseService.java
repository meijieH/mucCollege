package com.mucCollege.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.dao.CourseDao;
import com.mucCollege.dao.StuClassDao;
import com.mucCollege.dao.TeacourseDao;
import com.mucCollege.model.Course;
import com.mucCollege.model.StuClass;
import com.mucCollege.model.Teacourse;
import com.mucCollege.model.Test;
import com.mucCollege.model.User;

@Service
@Transactional
public class TeacourseService {
	@Resource TeacourseDao teacourseDao;
	@Resource CourseDao courseDao;
	@Resource StuClassDao stuClassDao;
	public List<Teacourse> teacourselist(User teacher) throws Exception{
		return teacourseDao.queryTeacourseByTeacherid(teacher.getUserid());
	}
	public List<Course> courselist() throws Exception{
		return courseDao.queryActiveCourse();
	}
	public List<StuClass> stuClasslist() throws Exception{
		return stuClassDao.queryAllStuClass();
	}
	public Teacourse getTeacourseById(Integer id)throws Exception{
		return teacourseDao.getTeacourseById(id);
	}
}