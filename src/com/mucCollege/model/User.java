package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer userid;
	private Dept dept;
	private Usertype usertype;
	private StuClass stuClass;
	private String username;
	private String password;
	private String usernum;
	private String reaname;
	private String gender;
	private String phonenum;
	private String email;
	private String position;
	private String intro;
	private Set teacourses = new HashSet(0);
	private Set testpapers = new HashSet(0);
	private Set selectcourses = new HashSet(0);
	private Set coustudents = new HashSet(0);
	private Set collections = new HashSet(0);
	private Set stupapers = new HashSet(0);
	private Set stupapers_1 = new HashSet(0);
	private Set coustudents_1 = new HashSet(0);
	private Set selectcourses_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(Usertype usertype) {
		this.usertype = usertype;
	}

	/** full constructor */
	public User(Dept dept, Usertype usertype, StuClass stuClass,
			String username, String password, String usernum, String reaname,
			String gender, String phonenum, String email, String position,
			String intro, Set teacourses, Set testpapers, Set selectcourses,
			Set coustudents, Set collections, Set stupapers, Set stupapers_1,
			Set coustudents_1, Set selectcourses_1) {
		this.dept = dept;
		this.usertype = usertype;
		this.stuClass = stuClass;
		this.username = username;
		this.password = password;
		this.usernum = usernum;
		this.reaname = reaname;
		this.gender = gender;
		this.phonenum = phonenum;
		this.email = email;
		this.position = position;
		this.intro = intro;
		this.teacourses = teacourses;
		this.testpapers = testpapers;
		this.selectcourses = selectcourses;
		this.coustudents = coustudents;
		this.collections = collections;
		this.stupapers = stupapers;
		this.stupapers_1 = stupapers_1;
		this.coustudents_1 = coustudents_1;
		this.selectcourses_1 = selectcourses_1;
	}

	// Property accessors

	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public Dept getDept() {
		return this.dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	public Usertype getUsertype() {
		return this.usertype;
	}

	public void setUsertype(Usertype usertype) {
		this.usertype = usertype;
	}

	public StuClass getStuClass() {
		return this.stuClass;
	}

	public void setStuClass(StuClass stuClass) {
		this.stuClass = stuClass;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsernum() {
		return this.usernum;
	}

	public void setUsernum(String usernum) {
		this.usernum = usernum;
	}

	public String getReaname() {
		return this.reaname;
	}

	public void setReaname(String reaname) {
		this.reaname = reaname;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhonenum() {
		return this.phonenum;
	}

	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPosition() {
		return this.position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getIntro() {
		return this.intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public Set getTeacourses() {
		return this.teacourses;
	}

	public void setTeacourses(Set teacourses) {
		this.teacourses = teacourses;
	}

	public Set getTestpapers() {
		return this.testpapers;
	}

	public void setTestpapers(Set testpapers) {
		this.testpapers = testpapers;
	}

	public Set getSelectcourses() {
		return this.selectcourses;
	}

	public void setSelectcourses(Set selectcourses) {
		this.selectcourses = selectcourses;
	}

	public Set getCoustudents() {
		return this.coustudents;
	}

	public void setCoustudents(Set coustudents) {
		this.coustudents = coustudents;
	}

	public Set getCollections() {
		return this.collections;
	}

	public void setCollections(Set collections) {
		this.collections = collections;
	}

	public Set getStupapers() {
		return this.stupapers;
	}

	public void setStupapers(Set stupapers) {
		this.stupapers = stupapers;
	}

	public Set getStupapers_1() {
		return this.stupapers_1;
	}

	public void setStupapers_1(Set stupapers_1) {
		this.stupapers_1 = stupapers_1;
	}

	public Set getCoustudents_1() {
		return this.coustudents_1;
	}

	public void setCoustudents_1(Set coustudents_1) {
		this.coustudents_1 = coustudents_1;
	}

	public Set getSelectcourses_1() {
		return this.selectcourses_1;
	}

	public void setSelectcourses_1(Set selectcourses_1) {
		this.selectcourses_1 = selectcourses_1;
	}

}