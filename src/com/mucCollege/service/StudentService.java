package com.mucCollege.service;

import java.util.ArrayList;
import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.mucCollege.dao.StudentDao;
import com.mucCollege.model.User;

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
	public void register(User student){
		studentDao.addUser(student);
	}
	//登陆及验证：登陆用户名、密码格式放在jsp里验证
	@Transactional(propagation=Propagation.NOT_SUPPORTED) 
	public User CheckLogin(User student){
		ArrayList<User> studentList=studentDao.QueryStudentByUserName(student.getUsername());
		if(studentList.size()==0) { 
			this.errMessage = "用户名不存在";
			System.out.print(this.errMessage);
			return null;
		} else{
			User db_student=studentList.get(0);
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
	public void update(User student){
		studentDao.updateStudent(student);
	}
	//显示管理员信息
	public User showUserInfo(User student){
		// todo 如果一定确定这里数据库总能查到内容,直接用get(0)倒也没什么问题。如果不是的话,加个判断吧
		User db_student=studentDao.QueryStudentByUserName(student.getUsername()).get(0);
		return db_student;
	}
}