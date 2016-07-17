package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Student entity. @author MyEclipse Persistence Tools
 */

public class Student implements java.io.Serializable {

	// Fields

	private Integer studentid;
	private StuClass stuClass;
	private String stuname;
	private String password;
	private String stunumber;
	private String gender;
	private String phonenum;
	private String email;
	private Set selectcourses = new HashSet(0);
	private Set coustudents = new HashSet(0);
	private Set stupapers = new HashSet(0);
	private Set stupapers_1 = new HashSet(0);
	private Set coustudents_1 = new HashSet(0);
	private Set selectcourses_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Student() {
	}

	/** full constructor */
	public Student(StuClass stuClass, String stuname, String password,
			String stunumber, String gender, String phonenum, String email,
			Set selectcourses, Set coustudents, Set stupapers, Set stupapers_1,
			Set coustudents_1, Set selectcourses_1) {
		this.stuClass = stuClass;
		this.stuname = stuname;
		this.password = password;
		this.stunumber = stunumber;
		this.gender = gender;
		this.phonenum = phonenum;
		this.email = email;
		this.selectcourses = selectcourses;
		this.coustudents = coustudents;
		this.stupapers = stupapers;
		this.stupapers_1 = stupapers_1;
		this.coustudents_1 = coustudents_1;
		this.selectcourses_1 = selectcourses_1;
	}

	// Property accessors

	public Integer getStudentid() {
		return this.studentid;
	}

	public void setStudentid(Integer studentid) {
		this.studentid = studentid;
	}

	public StuClass getStuClass() {
		return this.stuClass;
	}

	public void setStuClass(StuClass stuClass) {
		this.stuClass = stuClass;
	}

	public String getStuname() {
		return this.stuname;
	}

	public void setStuname(String stuname) {
		this.stuname = stuname;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getStunumber() {
		return this.stunumber;
	}

	public void setStunumber(String stunumber) {
		this.stunumber = stunumber;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhonenum() {
		return this.phonenum;
	}

	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Set getSelectcourses() {
		return this.selectcourses;
	}

	public void setSelectcourses(Set selectcourses) {
		this.selectcourses = selectcourses;
	}

	public Set getCoustudents() {
		return this.coustudents;
	}

	public void setCoustudents(Set coustudents) {
		this.coustudents = coustudents;
	}

	public Set getStupapers() {
		return this.stupapers;
	}

	public void setStupapers(Set stupapers) {
		this.stupapers = stupapers;
	}

	public Set getStupapers_1() {
		return this.stupapers_1;
	}

	public void setStupapers_1(Set stupapers_1) {
		this.stupapers_1 = stupapers_1;
	}

	public Set getCoustudents_1() {
		return this.coustudents_1;
	}

	public void setCoustudents_1(Set coustudents_1) {
		this.coustudents_1 = coustudents_1;
	}

	public Set getSelectcourses_1() {
		return this.selectcourses_1;
	}

	public void setSelectcourses_1(Set selectcourses_1) {
		this.selectcourses_1 = selectcourses_1;
	}

}