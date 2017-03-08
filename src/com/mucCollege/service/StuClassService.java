package com.mucCollege.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.dao.StuClassDao;
import com.mucCollege.model.StuClass;

@Service
@Transactional
public class StuClassService {
	@Resource 
	StuClassDao stuClassDao;
	
	public ArrayList<StuClass> queryClassByDept (int deptid) {
		ArrayList<StuClass> stuClaList=stuClassDao.QueryClassByDept(deptid);
		return stuClaList;
	}

}
