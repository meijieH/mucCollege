package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Teacourse entity. @author MyEclipse Persistence Tools
 */

public class Teacourse implements java.io.Serializable {

	// Fields

	private Integer teacourseid;
	private Teacher teacher;
	private StuClass stuClass;
	private Course course;
	private Set coustudents = new HashSet(0);
	private Set coustudents_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Teacourse() {
	}

	/** full constructor */
	public Teacourse(Teacher teacher, StuClass stuClass, Course course,
			Set coustudents, Set coustudents_1) {
		this.teacher = teacher;
		this.stuClass = stuClass;
		this.course = course;
		this.coustudents = coustudents;
		this.coustudents_1 = coustudents_1;
	}

	// Property accessors

	public Integer getTeacourseid() {
		return this.teacourseid;
	}

	public void setTeacourseid(Integer teacourseid) {
		this.teacourseid = teacourseid;
	}

	public Teacher getTeacher() {
		return this.teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public StuClass getStuClass() {
		return this.stuClass;
	}

	public void setStuClass(StuClass stuClass) {
		this.stuClass = stuClass;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Set getCoustudents() {
		return this.coustudents;
	}

	public void setCoustudents(Set coustudents) {
		this.coustudents = coustudents;
	}

	public Set getCoustudents_1() {
		return this.coustudents_1;
	}

	public void setCoustudents_1(Set coustudents_1) {
		this.coustudents_1 = coustudents_1;
	}

}