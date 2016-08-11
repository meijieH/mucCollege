package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Course entity. @author MyEclipse Persistence Tools
 */

public class Course implements java.io.Serializable {

	// Fields

	private Integer courseid;
	private String coursename;
	private String detail;
	private Set selectcourses = new HashSet(0);
	private Set selectcourses_1 = new HashSet(0);
	private Set teacourses = new HashSet(0);
	private Set teacourses_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Course() {
	}

	/** full constructor */
	public Course(String coursename, String detail, Set selectcourses,
			Set selectcourses_1, Set teacourses, Set teacourses_1) {
		this.coursename = coursename;
		this.detail = detail;
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