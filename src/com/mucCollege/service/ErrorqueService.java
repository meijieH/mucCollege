package com.mucCollege.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.dao.*;


@Service
@Transactional
public class ErrorqueService {
	@Resource ErrorqueDao errorqueDao;
	@Resource StupaperDao stupaperDao;
	@Resource UserDao userDao;
	
	/*public ArrayList<Errorque> getCouByStudentID(int studentid){
		stupaperDao.QueryStupaperByStudent(userDao.QueryUserById(studentid))
		stuque.stupaper.student
		ArrayList<Errorque> errList=errorqueDao.QueryErrorqueByStuque(stuque)
		return errList;
	} */
	

}