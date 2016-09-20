package com.mucCollege.service;

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
	public void register(Teacourse teacourse) throws Exception{
		teacourse.setCourse(courseDao.getCourseById(teacourse.getCourse().getCourseid()));
		teacourse.setStuClass(stuClassDao.getStuClassById(teacourse.getStuClass().getClassid()));
		teacourseDao.addTeacourse(teacourse);
	}
	public void apply(Teacourse teacourse) throws Exception{
		Course result=courseDao.queryCourseByCoursename(teacourse.getCourse().getCoursename());
		if(result!=null){
			if(result.getState().endsWith("待审批")){
				throw new Exception("同名课程已被申请开设，正在审批中，请等待审批");
			}else{
				throw new Exception("同名课程已存在，请直接选择添加此课程，不要重复申请");
			}
		}
		Integer courseid=courseDao.addCourse(teacourse.getCourse());
		teacourse.setCourse(courseDao.getCourseById(courseid));
		teacourse.setStuClass(stuClassDao.getStuClassById(teacourse.getStuClass().getClassid()));
		teacourseDao.addTeacourse(teacourse);
	}
}