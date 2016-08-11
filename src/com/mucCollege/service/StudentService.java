package com.mucCollege.service;

import java.util.ArrayList;
import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


import com.mucCollege.dao.StudentDao;
import com.mucCollege.model.Student;

@Service@Transactional
public class StudentService{
	@Resource SessionFactory factory;
	@Resource StudentDao studentDao;
	private String errMessage;
	
	public String getErrMessage() {
		return errMessage;
	}
	public void setErrMessage(String errMessage) {
		this.errMessage = errMessage;
	}
	//注册
	public void register(Student student){
		studentDao.addUser(student);
	}
	//登陆及验证：登陆用户名、密码格式放在jsp里验证
	@Transactional(propagation=Propagation.NOT_SUPPORTED) 
	public Student CheckLogin(Student student){
		ArrayList<Student> studentList=studentDao.QueryStudentByName(student.getStuname());
		if(studentList.size()==0) { 
			this.errMessage = "用户名不存在";
			System.out.print(this.errMessage);
			return null;
		} else{
			Student db_student=studentList.get(0);
			if( !db_student.getPassword().equals(student.getPassword())) {
			this.errMessage = "密码不正确！";
			System.out.print(this.errMessage);
			return null;
			}
			else{
				return db_student;
			}
		}		
	}
	//修改管理员信息
	public void update(Student student){
		studentDao.updateStudent(student);
	}
	//显示管理员信息
	public Student showUserInfo(Student student){
		Student db_student=studentDao.QueryStudentByName(student.getStuname()).get(0);
		return db_student;
	}

}
