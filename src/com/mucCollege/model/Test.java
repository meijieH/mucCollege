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
	private StuClass stuClass;
	private Testpaper testpaper;
	private String testname;
	private Integer testcreator;
	private Time starttime;
	private String teststatement;
	private Set stupapers = new HashSet(0);
	private Set stupapers_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Test() {
	}

	/** full constructor */
	public Test(StuClass stuClass, Testpaper testpaper, String testname,
			Integer testcreator, Time starttime, String teststatement,
			Set stupapers, Set stupapers_1) {
		this.stuClass = stuClass;
		this.testpaper = testpaper;
		this.testname = testname;
		this.testcreator = testcreator;
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

	public StuClass getStuClass() {
		return this.stuClass;
	}

	public void setStuClass(StuClass stuClass) {
		this.stuClass = stuClass;
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

	public Integer getTestcreator() {
		return this.testcreator;
	}

	public void setTestcreator(Integer testcreator) {
		this.testcreator = testcreator;
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