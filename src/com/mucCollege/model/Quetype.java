package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Quetype entity. @author MyEclipse Persistence Tools
 */

public class Quetype implements java.io.Serializable {

	// Fields

	private Integer quetypeid;
	private String typename;
	private Set questions = new HashSet(0);
	private Set questions_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Quetype() {
	}

	/** full constructor */
	public Quetype(String typename, Set questions, Set questions_1) {
		this.typename = typename;
		this.questions = questions;
		this.questions_1 = questions_1;
	}

	// Property accessors

	public Integer getQuetypeid() {
		return this.quetypeid;
	}

	public void setQuetypeid(Integer quetypeid) {
		this.quetypeid = quetypeid;
	}

	public String getTypename() {
		return this.typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

	public Set getQuestions() {
		return this.questions;
	}

	public void setQuestions(Set questions) {
		this.questions = questions;
	}

	public Set getQuestions_1() {
		return this.questions_1;
	}

	public void setQuestions_1(Set questions_1) {
		this.questions_1 = questions_1;
	}

}