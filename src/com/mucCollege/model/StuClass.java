package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * StuClass entity. @author MyEclipse Persistence Tools
 */

public class StuClass implements java.io.Serializable {

	// Fields

	private Integer classid;
	private Dept dept;
	private String classname;
	private String major;
	private String grade;
	private Set users = new HashSet(0);
	private Set tests = new HashSet(0);
	private Set teacourses = new HashSet(0);
	private Set tests_1 = new HashSet(0);
	private Set users_1 = new HashSet(0);
	private Set teacourses_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public StuClass() {
	}

	/** full constructor */
	public StuClass(Dept dept, String classname, String major, String grade,
			Set users, Set tests, Set teacourses, Set tests_1, Set users_1,
			Set teacourses_1) {
		this.dept = dept;
		this.classname = classname;
		this.major = major;
		this.grade = grade;
		this.users = users;
		this.tests = tests;
		this.teacourses = teacourses;
		this.tests_1 = tests_1;
		this.users_1 = users_1;
		this.teacourses_1 = teacourses_1;
	}

	// Property accessors

	public Integer getClassid() {
		return this.classid;
	}

	public void setClassid(Integer classid) {
		this.classid = classid;
	}

	public Dept getDept() {
		return this.dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	public String getClassname() {
		return this.classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	public String getMajor() {
		return this.major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getGrade() {
		return this.grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public Set getUsers() {
		return this.users;
	}

	public void setUsers(Set users) {
		this.users = users;
	}

	public Set getTests() {
		return this.tests;
	}

	public void setTests(Set tests) {
		this.tests = tests;
	}

	public Set getTeacourses() {
		return this.teacourses;
	}

	public void setTeacourses(Set teacourses) {
		this.teacourses = teacourses;
	}

	public Set getTests_1() {
		return this.tests_1;
	}

	public void setTests_1(Set tests_1) {
		this.tests_1 = tests_1;
	}

	public Set getUsers_1() {
		return this.users_1;
	}

	public void setUsers_1(Set users_1) {
		this.users_1 = users_1;
	}

	public Set getTeacourses_1() {
		return this.teacourses_1;
	}

	public void setTeacourses_1(Set teacourses_1) {
		this.teacourses_1 = teacourses_1;
	}

}