package com.mucCollege.model;

/**
 * Selectcourse entity. @author MyEclipse Persistence Tools
 */

public class Selectcourse implements java.io.Serializable {

	// Fields

	private Long selectid;
	private Course course;
	private User user;

	// Constructors

	/** default constructor */
	public Selectcourse() {
	}

	/** full constructor */
	public Selectcourse(Course course, User user) {
		this.course = course;
		this.user = user;
	}

	// Property accessors

	public Long getSelectid() {
		return this.selectid;
	}

	public void setSelectid(Long selectid) {
		this.selectid = selectid;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}