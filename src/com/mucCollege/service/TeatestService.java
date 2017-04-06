package com.mucCollege.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.dao.BlockDao;
import com.mucCollege.dao.QuestionDao;
import com.mucCollege.dao.TestDao;
import com.mucCollege.dao.TestpaperDao;
import com.mucCollege.dao.TestqueDao;
import com.mucCollege.model.Block;
import com.mucCollege.model.Question;
import com.mucCollege.model.Teacourse;
import com.mucCollege.model.Test;
import com.mucCollege.model.Testpaper;
import com.mucCollege.model.Testque;

@Service
@Transactional
public class TeatestService {
	@Resource
	TestDao testDao;
	@Resource
	TestpaperDao testpaperDao;
	@Resource
	BlockDao blockDao;
	@Resource
	TestqueDao testqueDao;
	@Resource
	QuestionDao questionDao;
	
	public ArrayList<Test> testlist(Integer id) throws Exception {
		return testDao.queryTestByTeacourseId(id);
	}

	public ArrayList<Test> queryAllTests() {
		ArrayList<Test> testList=testDao.QueryAllTestInfo();
		return testList;
	}

	public ArrayList<Testpaper> queryAllPapers() {
		ArrayList<Testpaper> testpaperList=testpaperDao.QueryAllTestpaperInfo();
		return testpaperList;
	}

	public Testpaper getTestpaperById(Integer id) throws Exception {
		Testpaper testpaper=testpaperDao.getTestpaperById(id);
		return testpaper;
	}

	public ArrayList<Test> queryTestsByLesson(Integer teacourseid) throws Exception {
		ArrayList<Test> testList=testDao.queryTestByTeacourseId(teacourseid);
		return testList;
	}

	public ArrayList<Testpaper> queryTestpaperByCreator(Integer userid) {
		ArrayList<Testpaper> testList=testpaperDao.QueryTestpaperByCreator(userid);
		return testList;
	}
	
	public ArrayList<Testpaper> queryMyTestpaperByName(String testpapername,Integer userid) {
		ArrayList<Testpaper> testList=testpaperDao.QueryMyTestpaperByName(testpapername,userid);
		return testList;
	}
	
	public ArrayList<Testpaper> queryAllTestpaperByName(String testpapername) {
		ArrayList<Testpaper> testList=testpaperDao.QueryAllTestpaperByName(testpapername);
		return testList;
	}

	public ArrayList<Block> getBlockList(Integer testpaperid) {
		ArrayList<Block> blockList=blockDao.queryBlockByTestpaperid(testpaperid);
		return blockList;
	}

	public ArrayList<Testque> getTestqueByBlock(Integer blockid) {
		ArrayList<Testque> testqueList=testqueDao.QueryTestqueByBlock(blockid);
		return testqueList;
	}
	

	public Block getBlockById(Integer blockid) {
		
		Block block=blockDao.queryBlockById(blockid);
		return block;
	}

	public Test getTestById(Integer testid) {
		Test test=testDao.GetTestById(testid);
		return test;
	}

	public ArrayList<Question> getTestqueByType(String label,int type,int Num) {
		ArrayList<Question> queList=questionDao.QueryQuestionByLabel(label,type,Num);
		return queList;
	}
}