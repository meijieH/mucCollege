package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Group entity. @author MyEclipse Persistence Tools
 */

public class Group implements java.io.Serializable {

	// Fields

	private Integer groupid;
	private Block block;
	private String groupname;
	private String groupdes;
	private Set testques = new HashSet(0);

	// Constructors

	/** default constructor */
	public Group() {
	}

	/** full constructor */
	public Group(Block block, String groupname, String groupdes, Set testques) {
		this.block = block;
		this.groupname = groupname;
		this.groupdes = groupdes;
		this.testques = testques;
	}

	// Property accessors

	public Integer getGroupid() {
		return this.groupid;
	}

	public void setGroupid(Integer groupid) {
		this.groupid = groupid;
	}

	public Block getBlock() {
		return this.block;
	}

	public void setBlock(Block block) {
		this.block = block;
	}

	public String getGroupname() {
		return this.groupname;
	}

	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}

	public String getGroupdes() {
		return this.groupdes;
	}

	public void setGroupdes(String groupdes) {
		this.groupdes = groupdes;
	}

	public Set getTestques() {
		return this.testques;
	}

	public void setTestques(Set testques) {
		this.testques = testques;
	}

}