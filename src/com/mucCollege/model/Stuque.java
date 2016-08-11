package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Stuque entity. @author MyEclipse Persistence Tools
 */

public class Stuque implements java.io.Serializable {

	// Fields

	private Integer stuqueid;
	private Stupaper stupaper;
	private Testque testque;
	private String answer;
	private Integer score;
	private Set teamarks = new HashSet(0);
	private Set teamarks_1 = new HashSet(0);
	private Set teamarks_2 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Stuque() {
	}

	/** full constructor */
	public Stuque(Stupaper stupaper, Testque testque, String answer,
			Integer score, Set teamarks, Set teamarks_1, Set teamarks_2) {
		this.stupaper = stupaper;
		this.testque = testque;
		this.answer = answer;
		this.score = score;
		this.teamarks = teamarks;
		this.teamarks_1 = teamarks_1;
		this.teamarks_2 = teamarks_2;
	}

	// Property accessors

	public Integer getStuqueid() {
		return this.stuqueid;
	}

	public void setStuqueid(Integer stuqueid) {
		this.stuqueid = stuqueid;
	}

	public Stupaper getStupaper() {
		return this.stupaper;
	}

	public void setStupaper(Stupaper stupaper) {
		this.stupaper = stupaper;
	}

	public Testque getTestque() {
		return this.testque;
	}

	public void setTestque(Testque testque) {
		this.testque = testque;
	}

	public String getAnswer() {
		return this.answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Integer getScore() {
		return this.score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public Set getTeamarks() {
		return this.teamarks;
	}

	public void setTeamarks(Set teamarks) {
		this.teamarks = teamarks;
	}

	public Set getTeamarks_1() {
		return this.teamarks_1;
	}

	public void setTeamarks_1(Set teamarks_1) {
		this.teamarks_1 = teamarks_1;
	}

	public Set getTeamarks_2() {
		return this.teamarks_2;
	}

	public void setTeamarks_2(Set teamarks_2) {
		this.teamarks_2 = teamarks_2;
	}

}