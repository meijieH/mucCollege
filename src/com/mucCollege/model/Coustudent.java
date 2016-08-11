package com.mucCollege.model;

/**
 * Coustudent entity. @author MyEclipse Persistence Tools
 */

public class Coustudent implements java.io.Serializable {

	// Fields

	private Integer coustudentid;
	private Teacourse teacourse;
	private User user;

	// Constructors

	/** default constructor */
	public Coustudent() {
	}

	/** full constructor */
	public Coustudent(Teacourse teacourse, User user) {
		this.teacourse = teacourse;
		this.user = user;
	}

	// Property accessors

	public Integer getCoustudentid() {
		return this.coustudentid;
	}

	public void setCoustudentid(Integer coustudentid) {
		this.coustudentid = coustudentid;
	}

	public Teacourse getTeacourse() {
		return this.teacourse;
	}

	public void setTeacourse(Teacourse teacourse) {
		this.teacourse = teacourse;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}