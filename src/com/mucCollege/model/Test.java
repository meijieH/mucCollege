package com.mucCollege.model;

import java.sql.Time;
import java.util.HashSet;
import java.util.Set;

/**
 * Test entity. @author MyEclipse Persistence Tools
 */

public class Test implements java.io.Serializable {

	// Fields

	private Integer testid;
	private Teacourse teacourse;
	private Testpaper testpaper;
	private String testname;
	private User user;
	private Time starttime;
	private String teststatement;
	private Set stupapers = new HashSet(0);
	private Set stupapers_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Test() {
	}

	/** full constructor */
	public Test(Teacourse teacourse, Testpaper testpaper, String testname,
			User user, Time starttime, String teststatement,
			Set stupapers, Set stupapers_1) {
		this.teacourse=teacourse;
		this.testpaper = testpaper;
		this.testname = testname;
		this.user=user;
		this.starttime = starttime;
		this.teststatement = teststatement;
		this.stupapers = stupapers;
		this.stupapers_1 = stupapers_1;
	}

	// Property accessors

	public Integer getTestid() {
		return this.testid;
	}

	public void setTestid(Integer testid) {
		this.testid = testid;
	}

	public Teacourse getTeacourse() {
		return teacourse;
	}

	public void setTeacourse(Teacourse teacourse) {
		this.teacourse = teacourse;
	}

	public Testpaper getTestpaper() {
		return this.testpaper;
	}

	public void setTestpaper(Testpaper testpaper) {
		this.testpaper = testpaper;
	}

	public String getTestname() {
		return this.testname;
	}

	public void setTestname(String testname) {
		this.testname = testname;
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Time getStarttime() {
		return this.starttime;
	}

	public void setStarttime(Time starttime) {
		this.starttime = starttime;
	}

	public String getTeststatement() {
		return this.teststatement;
	}

	public void setTeststatement(String teststatement) {
		this.teststatement = teststatement;
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

}