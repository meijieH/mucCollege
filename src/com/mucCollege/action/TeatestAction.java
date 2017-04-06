package com.mucCollege.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mucCollege.model.Block;
import com.mucCollege.model.Question;
import com.mucCollege.model.Teacourse;
import com.mucCollege.model.Test;
import com.mucCollege.model.Testpaper;
import com.mucCollege.model.Testque;
import com.mucCollege.model.User;
import com.mucCollege.service.TeacherService;
import com.mucCollege.service.TeacourseService;
import com.mucCollege.service.TeatestService;
import com.opensymphony.xwork2.ActionContext;

@Service
@Transactional
@Controller
@Scope("prototype")
public class TeatestAction {
	@Resource
	TeatestService teatestService;
	@Resource
	TeacourseService teacourseService;
	@Resource
	TeacherService teacherService;
	private User user;
	private Test test;
	private Teacourse teacourse;
	private List<Test> testlist;
	private Testpaper testpaper;
	private Block block;
	private ArrayList<Block> blockList;
	private Testque testque;
	private ArrayList<Testque> testqueList;
	private ArrayList<Test> testList;
	private ArrayList<Testpaper> testpaperList;
	private List<String> collecStrings;
	
	private int danxuanNum;
	private int duoxuanNum;
	private int panduanNum;
	private int tiankongNum;
	private int jiandaNum;
	private int yingyongNum;
	private String label;
	ArrayList<Question> danxuanList;
	ArrayList<Question> duoxuanList;
	ArrayList<Question> panduanList;
	ArrayList<Question> tiankongList;
	ArrayList<Question> jiandaist;
	ArrayList<Question> yinyongList;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Test getTest() {
		return test;
	}

	public void setTest(Test test) {
		this.test = test;
	}

	public Teacourse getTeacourse() {
		return teacourse;
	}

	public void setTeacourse(Teacourse teacourse) {
		this.teacourse = teacourse;
	}

	public List<Test> getTestlist() {
		return testlist;
	}

	public void setTestlist(List<Test> testlist) {
		this.testlist = testlist;
	}

	public Testpaper getTestpaper() {
		return testpaper;
	}

	public void setTestpaper(Testpaper testpaper) {
		this.testpaper = testpaper;
	}

	public ArrayList<Test> getTestList() {
		return testList;
	}

	public void setTestList(ArrayList<Test> testList) {
		this.testList = testList;
	}

	public ArrayList<Testpaper> getTestpaperList() {
		return testpaperList;
	}

	public void setTestpaperList(ArrayList<Testpaper> testpaperList) {
		this.testpaperList = testpaperList;
	}

	public Block getBlock() {
		return block;
	}

	public void setBlock(Block block) {
		this.block = block;
	}

	public ArrayList<Block> getBlockList() {
		return blockList;
	}

	public void setBlockList(ArrayList<Block> blockList) {
		this.blockList = blockList;
	}

	public Testque getTestque() {
		return testque;
	}

	public void setTestque(Testque testque) {
		this.testque = testque;
	}

	public ArrayList<Testque> getTestqueList() {
		return testqueList;
	}

	public void setTestqueList(ArrayList<Testque> testqueList) {
		this.testqueList = testqueList;
	}

	public List<String> getCollecStrings() {
		return collecStrings;
	}

	public void setCollecStrings(List<String> collecStrings) {
		this.collecStrings = collecStrings;
	}

	
	public int getDanxuanNum() {
		return danxuanNum;
	}

	public void setDanxuanNum(int danxuanNum) {
		this.danxuanNum = danxuanNum;
	}

	public int getDuoxuanNum() {
		return duoxuanNum;
	}

	public void setDuoxuanNum(int duoxuanNum) {
		this.duoxuanNum = duoxuanNum;
	}

	public int getPanduanNum() {
		return panduanNum;
	}

	public void setPanduanNum(int panduanNum) {
		this.panduanNum = panduanNum;
	}

	public int getTiankongNum() {
		return tiankongNum;
	}

	public void setTiankongNum(int tiankongNum) {
		this.tiankongNum = tiankongNum;
	}

	public int getJiandaNum() {
		return jiandaNum;
	}

	public void setJiandaNum(int jiandaNum) {
		this.jiandaNum = jiandaNum;
	}

	public int getYingyongNum() {
		return yingyongNum;
	}

	public void setYingyongNum(int yingyongNum) {
		this.yingyongNum = yingyongNum;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}
	
	public ArrayList<Question> getDanxuanList() {
		return danxuanList;
	}

	public void setDanxuanList(ArrayList<Question> danxuanList) {
		this.danxuanList = danxuanList;
	}

	public ArrayList<Question> getDuoxuanList() {
		return duoxuanList;
	}

	public void setDuoxuanList(ArrayList<Question> duoxuanList) {
		this.duoxuanList = duoxuanList;
	}

	public ArrayList<Question> getPanduanList() {
		return panduanList;
	}

	public void setPanduanList(ArrayList<Question> panduanList) {
		this.panduanList = panduanList;
	}

	public ArrayList<Question> getTiankongList() {
		return tiankongList;
	}

	public void setTiankongList(ArrayList<Question> tiankongList) {
		this.tiankongList = tiankongList;
	}

	public ArrayList<Question> getJiandaist() {
		return jiandaist;
	}

	public void setJiandaist(ArrayList<Question> jiandaist) {
		this.jiandaist = jiandaist;
	}

	public ArrayList<Question> getYinyongList() {
		return yinyongList;
	}

	public void setYinyongList(ArrayList<Question> yinyongList) {
		this.yinyongList = yinyongList;
	}



	// 获取session
	ActionContext actionContext = ActionContext.getContext();
	Map session = actionContext.getSession();

	// 查看教师个人试卷库
	public String getMyTestpapers() throws Exception {
		user = (User) session.get("user");
		testpaperList = teatestService.queryTestpaperByCreator(user.getUserid());
		return "my_testpaper";
	}

	// 试题集
	public String getAllTestpapers() {
		user=(User)session.get("user");
		testpaperList = teatestService.queryAllPapers();
		return "all_testpaper";
	}
	
	//个人：根据名称查找试卷
	public String getMyTestpaperByName(){
		user=(User)session.get("user");
		testpaperList = teatestService.queryMyTestpaperByName(testpaper.getTestpapername(),user.getUserid());
		return "my_testpaper";
	}

	//全部：根据名称查找试卷
	public String getAllTestpaperByName(){
		user=(User)session.get("user");
		System.out.print(user.getUsername());
		testpaperList=teatestService.queryAllTestpaperByName(testpaper.getTestpapername());
		return "all_testpaper";
	}
	// 某门课程的对应的考试
	public String getTestpapersByLesson() throws Exception {
		testList = teatestService
				.queryTestsByLesson(teacourse.getTeacourseid());
		return "lesson_testpapers";
	}

	// 查看某张试卷
	public String showTestpaper() throws Exception {
		//testpaper = teatestService.getTestpaperById(testpaper.getTestpaperid());
		blockList=teatestService.getBlockList(testpaper.getTestpaperid());
		return "show_testpaper";
	}
	//查看考试对应的试卷
	public String getPaperByTest(){
		test=teatestService.getTestById(test.getTestid());
		blockList=teatestService.getBlockList(test.getTestpaper().getTestpaperid());
		return "show_testpaper";
	}
	//查看某张试卷的某块题目
	public String showTestQuestion() throws Exception{
		block=teatestService.getBlockById(block.getBlockid());
		testqueList=teatestService.getTestqueByBlock(block.getBlockid());
		return "show_testqueList";
	}
	public String toPartAutoPapers() {
		user = (User) session.get("user");
		return "part_autopapers";
	}

	public String toAutoPapers() {
		user = (User) session.get("user");
		collecStrings = teacherService.queryColByTeacher(user.getUserid());
		return "autopapers";
	}
	public String formPaper(){
		System.out.print(label);
		danxuanList=teatestService.getTestqueByType(label,1,danxuanNum);
		System.out.println(danxuanList.size());
		duoxuanList=teatestService.getTestqueByType(label,6,duoxuanNum);
		panduanList=teatestService.getTestqueByType(label,3,panduanNum);
		tiankongList=teatestService.getTestqueByType(label,2,tiankongNum);
		jiandaist=teatestService.getTestqueByType(label,4,jiandaNum);
		yinyongList=teatestService.getTestqueByType(label,5,yingyongNum);
		return "previewPaper";
	}
}