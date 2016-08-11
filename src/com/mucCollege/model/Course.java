package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Course entity. @author MyEclipse Persistence Tools
 */

public class Course implements java.io.Serializable {

	// Fields

	private Integer courseid;
	private Subject subject;
	private Dept dept;
	private String coursename;
	private String detail;
	private String state;
	private Set selectcourses = new HashSet(0);
	private Set selectcourses_1 = new HashSet(0);
	private Set teacourses = new HashSet(0);
	private Set teacourses_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Course() {
	}

	/** full constructor */
	public Course(Subject subject, Dept dept, String coursename, String detail,
			String state, Set selectcourses, Set selectcourses_1,
			Set teacourses, Set teacourses_1) {
		this.subject = subject;
		this.dept = dept;
		this.coursename = coursename;
		this.detail = detail;
		this.state = state;
		this.selectcourses = selectcourses;
		this.selectcourses_1 = selectcourses_1;
		this.teacourses = teacourses;
		this.teacourses_1 = teacourses_1;
	}

	// Property accessors

	public Integer getCourseid() {
		return this.courseid;
	}

	public void setCourseid(Integer courseid) {
		this.courseid = courseid;
	}

	public Subject getSubject() {
		return this.subject;
	}

	public void setSubject(Subject subject) {
		this.subject = subject;
	}

	public Dept getDept() {
		return this.dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	public String getCoursename() {
		return this.coursename;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	public String getDetail() {
		return this.detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Set getSelectcourses() {
		return this.selectcourses;
	}

	public void setSelectcourses(Set selectcourses) {
		this.selectcourses = selectcourses;
	}

	public Set getSelectcourses_1() {
		return this.selectcourses_1;
	}

	public void setSelectcourses_1(Set selectcourses_1) {
		this.selectcourses_1 = selectcourses_1;
	}

	public Set getTeacourses() {
		return this.teacourses;
	}

	public void setTeacourses(Set teacourses) {
		this.teacourses = teacourses;
	}

	public Set getTeacourses_1() {
		return this.teacourses_1;
	}

	public void setTeacourses_1(Set teacourses_1) {
		this.teacourses_1 = teacourses_1;
	}

}