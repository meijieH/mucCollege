package com.mucCollege.model;

/**
 * Selectcourse entity. @author MyEclipse Persistence Tools
 */

public class Selectcourse implements java.io.Serializable {

	// Fields

	private Long selectid;
	private Teacourse teacourse;
	private User user;

	// Constructors

	/** default constructor */
	public Selectcourse() {
	}

	/** full constructor */
	public Selectcourse(Teacourse teacourse, User user) {
		this.teacourse = teacourse;
		this.user = user;
	}

	// Property accessors

	public Long getSelectid() {
		return this.selectid;
	}

	public void setSelectid(Long selectid) {
		this.selectid = selectid;
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