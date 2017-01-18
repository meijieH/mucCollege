package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Testpaper entity. @author MyEclipse Persistence Tools
 */

public class Testpaper implements java.io.Serializable {

	// Fields

	private Integer testpaperid;
	private User user;
	private String testpapername;
	private Integer questionnum;
	private Integer totalscore;
	private Integer totaltime;
	private Set tests = new HashSet(0);
	private Set blocks = new HashSet(0);
	private Set blocks_1 = new HashSet(0);
	private Set tests_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Testpaper() {
	}

	/** full constructor */
	public Testpaper(User user, String testpapername, Integer questionnum,
			Integer totalscore, Integer totaltime, Set tests, Set blocks,
			Set blocks_1, Set tests_1) {
		this.user = user;
		this.testpapername = testpapername;
		this.questionnum = questionnum;
		this.totalscore = totalscore;
		this.totaltime = totaltime;
		this.tests = tests;
		this.blocks = blocks;
		this.blocks_1 = blocks_1;
		this.tests_1 = tests_1;
	}

	// Property accessors

	public Integer getTestpaperid() {
		return this.testpaperid;
	}

	public void setTestpaperid(Integer testpaperid) {
		this.testpaperid = testpaperid;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getTestpapername() {
		return this.testpapername;
	}

	public void setTestpapername(String testpapername) {
		this.testpapername = testpapername;
	}

	public Integer getQuestionnum() {
		return this.questionnum;
	}

	public void setQuestionnum(Integer questionnum) {
		this.questionnum = questionnum;
	}

	public Integer getTotalscore() {
		return this.totalscore;
	}

	public void setTotalscore(Integer totalscore) {
		this.totalscore = totalscore;
	}

	public Integer getTotaltime() {
		return this.totaltime;
	}

	public void setTotaltime(Integer totaltime) {
		this.totaltime = totaltime;
	}

	public Set getTests() {
		return this.tests;
	}

	public void setTests(Set tests) {
		this.tests = tests;
	}

	public Set getBlocks() {
		return this.blocks;
	}

	public void setBlocks(Set blocks) {
		this.blocks = blocks;
	}

	public Set getBlocks_1() {
		return this.blocks_1;
	}

	public void setBlocks_1(Set blocks_1) {
		this.blocks_1 = blocks_1;
	}

	public Set getTests_1() {
		return this.tests_1;
	}

	public void setTests_1(Set tests_1) {
		this.tests_1 = tests_1;
	}

}