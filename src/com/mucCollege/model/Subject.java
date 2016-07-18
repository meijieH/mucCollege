package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Subject entity. @author MyEclipse Persistence Tools
 */

public class Subject implements java.io.Serializable {

	// Fields

	private Integer subjectid;
	private String subjectname;
	private Set courses = new HashSet(0);
	private Set courses_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Subject() {
	}

	/** full constructor */
	public Subject(String subjectname, Set courses, Set courses_1) {
		this.subjectname = subjectname;
		this.courses = courses;
		this.courses_1 = courses_1;
	}

	// Property accessors

	public Integer getSubjectid() {
		return this.subjectid;
	}

	public void setSubjectid(Integer subjectid) {
		this.subjectid = subjectid;
	}

	public String getSubjectname() {
		return this.subjectname;
	}

	public void setSubjectname(String subjectname) {
		this.subjectname = subjectname;
	}

	public Set getCourses() {
		return this.courses;
	}

	public void setCourses(Set courses) {
		this.courses = courses;
	}

	public Set getCourses_1() {
		return this.courses_1;
	}

	public void setCourses_1(Set courses_1) {
		this.courses_1 = courses_1;
	}

}