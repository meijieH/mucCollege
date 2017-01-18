package com.mucCollege.model;

/**
 * Errorque entity. @author MyEclipse Persistence Tools
 */

public class Errorque implements java.io.Serializable {

	// Fields

	private Integer errorqueid;
	private Question question;

	// Constructors

	/** default constructor */
	public Errorque() {
	}

	/** full constructor */
	public Errorque(Question question) {
		this.question = question;
	}

	// Property accessors

	public Integer getErrorqueid() {
		return this.errorqueid;
	}

	public void setErrorqueid(Integer errorqueid) {
		this.errorqueid = errorqueid;
	}

	public Question getQuestion() {
		return this.question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

}