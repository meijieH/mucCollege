package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Stupaper entity. @author MyEclipse Persistence Tools
 */

public class Stupaper implements java.io.Serializable {

	// Fields

	private Integer stupaperid;
	private Test test;
	private User user;
	private Integer score;
	private Integer status;
	private Integer accuracy;
	private Set stuques = new HashSet(0);
	private Set stuques_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Stupaper() {
	}

	/** full constructor */
	public Stupaper(Test test, User user, Integer score, Integer status,
			Integer accuracy, Set stuques, Set stuques_1) {
		this.test = test;
		this.user = user;
		this.score = score;
		this.status = status;
		this.accuracy = accuracy;
		this.stuques = stuques;
		this.stuques_1 = stuques_1;
	}

	// Property accessors

	public Integer getStupaperid() {
		return this.stupaperid;
	}

	public void setStupaperid(Integer stupaperid) {
		this.stupaperid = stupaperid;
	}

	public Test getTest() {
		return this.test;
	}

	public void setTest(Test test) {
		this.test = test;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getScore() {
		return this.score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getAccuracy() {
		return this.accuracy;
	}

	public void setAccuracy(Integer accuracy) {
		this.accuracy = accuracy;
	}

	public Set getStuques() {
		return this.stuques;
	}

	public void setStuques(Set stuques) {
		this.stuques = stuques;
	}

	public Set getStuques_1() {
		return this.stuques_1;
	}

	public void setStuques_1(Set stuques_1) {
		this.stuques_1 = stuques_1;
	}

}