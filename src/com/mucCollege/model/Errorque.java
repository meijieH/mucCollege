package com.mucCollege.model;

/**
 * Errorque entity. @author MyEclipse Persistence Tools
 */

public class Errorque implements java.io.Serializable {

	// Fields

	private Integer errorqueid;
	private Stuque stuque;

	// Constructors

	/** default constructor */
	public Errorque() {
	}

	/** full constructor */
	public Errorque(Stuque stuque) {
		this.stuque = stuque;
	}

	// Property accessors

	public Integer getErrorqueid() {
		return this.errorqueid;
	}

	public void setErrorqueid(Integer errorqueid) {
		this.errorqueid = errorqueid;
	}

	public Stuque getStuque() {
		return stuque;
	}

	public void setStuque(Stuque stuque) {
		this.stuque = stuque;
	}

}