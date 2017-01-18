package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Usertype entity. @author MyEclipse Persistence Tools
 */

public class Usertype implements java.io.Serializable {

	// Fields

	private Integer usertypeid;
	private String role;
	private Set users = new HashSet(0);
	private Set users_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Usertype() {
	}

	/** full constructor */
	public Usertype(String role, Set users, Set users_1) {
		this.role = role;
		this.users = users;
		this.users_1 = users_1;
	}

	// Property accessors

	public Integer getUsertypeid() {
		return this.usertypeid;
	}

	public void setUsertypeid(Integer usertypeid) {
		this.usertypeid = usertypeid;
	}

	public String getRole() {
		return this.role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Set getUsers() {
		return this.users;
	}

	public void setUsers(Set users) {
		this.users = users;
	}

	public Set getUsers_1() {
		return this.users_1;
	}

	public void setUsers_1(Set users_1) {
		this.users_1 = users_1;
	}

}