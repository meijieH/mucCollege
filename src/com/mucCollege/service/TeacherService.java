package com.mucCollege.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.dao.UserDao;
import com.mucCollege.dao.UsertypeDao;
import com.mucCollege.model.User;
import com.mucCollege.model.Usertype;

@Service
@Transactional
public class TeacherService {
	@Resource UserDao userDao;
	@Resource UsertypeDao usertypeDao;
	public void add(User teacher) throws Exception{
		User result=userDao.queryUserByUsernum(teacher.getUsernum());
		if(result!=null){
			throw new Exception("用户已经存在，已存在的用户姓名为："+result.getUsername());
		}
		Usertype teachertype=usertypeDao.queryUsertypeByRole("teacher");
		teacher.setUsertype(teachertype);
		
		userDao.addUser(teacher);
	}
	public User queryUserByUsernum(String usernum) throws Exception{
		User result=userDao.queryUserByUsernum(usernum);
		return result;
	}
}