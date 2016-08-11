package com.mucCollege.model;

/**
 * Coustudent entity. @author MyEclipse Persistence Tools
 */

public class Coustudent implements java.io.Serializable {

	// Fields

	private Integer coustudentid;
	private Student student;
	private Teacourse teacourse;

	// Constructors

	/** default constructor */
	public Coustudent() {
	}

	/** full constructor */
	public Coustudent(Student student, Teacourse teacourse) {
		this.student = student;
		this.teacourse = teacourse;
	}

	// Property accessors

	public Integer getCoustudentid() {
		return this.coustudentid;
	}

	public void setCoustudentid(Integer coustudentid) {
		this.coustudentid = coustudentid;
	}

	public Student getStudent() {
		return this.student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Teacourse getTeacourse() {
		return this.teacourse;
	}

	public void setTeacourse(Teacourse teacourse) {
		this.teacourse = teacourse;
	}

}