package com.mucCollege.model;

/**
 * Tecmark entity. @author MyEclipse Persistence Tools
 */

public class Tecmark implements java.io.Serializable {

	// Fields

	private Integer tecmarkid;
	private Stuque stuque;
	private String comment;

	// Constructors

	/** default constructor */
	public Tecmark() {
	}

	/** full constructor */
	public Tecmark(Stuque stuque, String comment) {
		this.stuque = stuque;
		this.comment = comment;
	}

	// Property accessors

	public Integer getTecmarkid() {
		return this.tecmarkid;
	}

	public void setTecmarkid(Integer tecmarkid) {
		this.tecmarkid = tecmarkid;
	}

	public Stuque getStuque() {
		return this.stuque;
	}

	public void setStuque(Stuque stuque) {
		this.stuque = stuque;
	}

	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

}