package com.mucCollege.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.dao.CoustudentDao;
import com.mucCollege.dao.UserDao;
import com.mucCollege.model.*;

@Service
@Transactional
public class CoustudentService {
	@Resource CoustudentDao coustudentDao;
	@Resource UserDao userDao;
	
	public ArrayList<Coustudent> couByStudentID(int studentid){
		ArrayList<Coustudent> couList=coustudentDao.QueryCoustudentByStudent(userDao.QueryUserById(studentid));
		return couList;
	} 
	

}
