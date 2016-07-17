package com.mucCollege.model;

/**
 * Selectcourse entity. @author MyEclipse Persistence Tools
 */

public class Selectcourse implements java.io.Serializable {

	// Fields

	private Long selectid;
	private Student student;
	private Course course;

	// Constructors

	/** default constructor */
	public Selectcourse() {
	}

	/** full constructor */
	public Selectcourse(Student student, Course course) {
		this.student = student;
		this.course = course;
	}

	// Property accessors

	public Long getSelectid() {
		return this.selectid;
	}

	public void setSelectid(Long selectid) {
		this.selectid = selectid;
	}

	public Student getStudent() {
		return this.student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

}