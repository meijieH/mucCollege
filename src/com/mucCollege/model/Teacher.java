package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Teacher entity. @author MyEclipse Persistence Tools
 */

public class Teacher implements java.io.Serializable {

	// Fields

	private Integer teacherid;
	private Dept dept;
	private String teaname;
	private String teanum;
	private String password;
	private String position;
	private String intro;
	private String gender;
	private String phonenum;
	private String email;
	private Set teacourses = new HashSet(0);
	private Set teacourses_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Teacher() {
	}

	/** full constructor */
	public Teacher(Dept dept, String teaname, String teanum, String password,
			String position, String intro, String gender, String phonenum,
			String email, Set teacourses, Set teacourses_1) {
		this.dept = dept;
		this.teaname = teaname;
		this.teanum = teanum;
		this.password = password;
		this.position = position;
		this.intro = intro;
		this.gender = gender;
		this.phonenum = phonenum;
		this.email = email;
		this.teacourses = teacourses;
		this.teacourses_1 = teacourses_1;
	}

	// Property accessors

	public Integer getTeacherid() {
		return this.teacherid;
	}

	public void setTeacherid(Integer teacherid) {
		this.teacherid = teacherid;
	}

	public Dept getDept() {
		return this.dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	public String getTeaname() {
		return this.teaname;
	}

	public void setTeaname(String teaname) {
		this.teaname = teaname;
	}

	public String getTeanum() {
		return this.teanum;
	}

	public void setTeanum(String teanum) {
		this.teanum = teanum;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPosition() {
		return this.position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getIntro() {
		return this.intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
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

	public Set getTeacourses() {
		return this.teacourses;
	}

	public void setTeacourses(Set teacourses) {
		this.teacourses = teacourses;
	}

	public Set getTeacourses_1() {
		return this.teacourses_1;
	}

	public void setTeacourses_1(Set teacourses_1) {
		this.teacourses_1 = teacourses_1;
	}

}