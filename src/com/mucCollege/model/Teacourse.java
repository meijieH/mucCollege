package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Teacourse entity. @author MyEclipse Persistence Tools
 */

public class Teacourse implements java.io.Serializable {

	// Fields

	private Integer teacourseid;
	private User user;
	private StuClass stuClass;
	private Course course;
	private Integer year;
	private Integer term;
	private Double couscore;
	private Double coutime;
	private String state;
	private Set coustudents = new HashSet(0);
	private Set selectcourses = new HashSet(0);
	private Set coustudents_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Teacourse() {
	}

	/** full constructor */
	public Teacourse(User user, StuClass stuClass, Course course, Integer year,
			Integer term, Double couscore, Double coutime, String state,
			Set coustudents, Set selectcourses, Set coustudents_1) {
		this.user = user;
		this.stuClass = stuClass;
		this.course = course;
		this.year = year;
		this.term = term;
		this.couscore = couscore;
		this.coutime = coutime;
		this.state = state;
		this.coustudents = coustudents;
		this.selectcourses = selectcourses;
		this.coustudents_1 = coustudents_1;
	}

	// Property accessors

	public Integer getTeacourseid() {
		return this.teacourseid;
	}

	public void setTeacourseid(Integer teacourseid) {
		this.teacourseid = teacourseid;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
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

	public Integer getYear() {
		return this.year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public Integer getTerm() {
		return this.term;
	}

	public void setTerm(Integer term) {
		this.term = term;
	}

	public Double getCouscore() {
		return this.couscore;
	}

	public void setCouscore(Double couscore) {
		this.couscore = couscore;
	}

	public Double getCoutime() {
		return this.coutime;
	}

	public void setCoutime(Double coutime) {
		this.coutime = coutime;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Set getCoustudents() {
		return this.coustudents;
	}

	public void setCoustudents(Set coustudents) {
		this.coustudents = coustudents;
	}

	public Set getSelectcourses() {
		return this.selectcourses;
	}

	public void setSelectcourses(Set selectcourses) {
		this.selectcourses = selectcourses;
	}

	public Set getCoustudents_1() {
		return this.coustudents_1;
	}

	public void setCoustudents_1(Set coustudents_1) {
		this.coustudents_1 = coustudents_1;
	}

}