package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Testque entity. @author MyEclipse Persistence Tools
 */

public class Testque implements java.io.Serializable {

	// Fields

	private Integer testquesid;
	private Question question;
	private Testpaper testpaper;
	private Integer quesnum;
	private Integer score;
	private Integer depth;
	private Set stuques = new HashSet(0);
	private Set stuques_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Testque() {
	}

	/** full constructor */
	public Testque(Question question, Testpaper testpaper, Integer quesnum,
			Integer score, Integer depth, Set stuques, Set stuques_1) {
		this.question = question;
		this.testpaper = testpaper;
		this.quesnum = quesnum;
		this.score = score;
		this.depth = depth;
		this.stuques = stuques;
		this.stuques_1 = stuques_1;
	}

	// Property accessors

	public Integer getTestquesid() {
		return this.testquesid;
	}

	public void setTestquesid(Integer testquesid) {
		this.testquesid = testquesid;
	}

	public Question getQuestion() {
		return this.question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public Testpaper getTestpaper() {
		return this.testpaper;
	}

	public void setTestpaper(Testpaper testpaper) {
		this.testpaper = testpaper;
	}

	public Integer getQuesnum() {
		return this.quesnum;
	}

	public void setQuesnum(Integer quesnum) {
		this.quesnum = quesnum;
	}

	public Integer getScore() {
		return this.score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public Integer getDepth() {
		return this.depth;
	}

	public void setDepth(Integer depth) {
		this.depth = depth;
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