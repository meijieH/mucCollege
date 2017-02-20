package com.mucCollege.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.dao.QuestionDao;
import com.mucCollege.dao.TeacherDao;

@Service
@Transactional
public class TeacherService extends UserService {
	@Resource TeacherDao teacherDao;
	@Resource QuestionDao questionDao;

}