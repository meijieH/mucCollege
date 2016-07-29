package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Dept entity. @author MyEclipse Persistence Tools
 */

public class Dept implements java.io.Serializable {

	// Fields

	private Integer deptid;
	private String deptname;
	private String deptdes;
	private Set stuClasses = new HashSet(0);
	private Set courses = new HashSet(0);
	private Set stuClasses_1 = new HashSet(0);
	private Set users = new HashSet(0);

	// Constructors

	/** default constructor */
	public Dept() {
	}

	/** full constructor */
	public Dept(String deptname, String deptdes, Set stuClasses, Set courses,
			Set stuClasses_1, Set users) {
		this.deptname = deptname;
		this.deptdes = deptdes;
		this.stuClasses = stuClasses;
		this.courses = courses;
		this.stuClasses_1 = stuClasses_1;
		this.users = users;
	}

	// Property accessors

	public Integer getDeptid() {
		return this.deptid;
	}

	public void setDeptid(Integer deptid) {
		this.deptid = deptid;
	}

	public String getDeptname() {
		return this.deptname;
	}

	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}

	public String getDeptdes() {
		return this.deptdes;
	}

	public void setDeptdes(String deptdes) {
		this.deptdes = deptdes;
	}

	public Set getStuClasses() {
		return this.stuClasses;
	}

	public void setStuClasses(Set stuClasses) {
		this.stuClasses = stuClasses;
	}

	public Set getCourses() {
		return this.courses;
	}

	public void setCourses(Set courses) {
		this.courses = courses;
	}

	public Set getStuClasses_1() {
		return this.stuClasses_1;
	}

	public void setStuClasses_1(Set stuClasses_1) {
		this.stuClasses_1 = stuClasses_1;
	}

	public Set getUsers() {
		return this.users;
	}

	public void setUsers(Set users) {
		this.users = users;
	}

}