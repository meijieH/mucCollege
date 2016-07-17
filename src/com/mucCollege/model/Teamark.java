package com.mucCollege.model;

/**
 * Teamark entity. @author MyEclipse Persistence Tools
 */

public class Teamark implements java.io.Serializable {

	// Fields

	private Integer teamarkid;
	private Stuque stuque;
	private String comment;

	// Constructors

	/** default constructor */
	public Teamark() {
	}

	/** full constructor */
	public Teamark(Stuque stuque, String comment) {
		this.stuque = stuque;
		this.comment = comment;
	}

	// Property accessors

	public Integer getTeamarkid() {
		return this.teamarkid;
	}

	public void setTeamarkid(Integer teamarkid) {
		this.teamarkid = teamarkid;
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