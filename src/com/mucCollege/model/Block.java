package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Block entity. @author MyEclipse Persistence Tools
 */

public class Block implements java.io.Serializable {

	// Fields

	private Integer blockid;
	private Testpaper testpaper;
	private String blockname;
	private String blockdes;
	private Set testques = new HashSet(0);
	// Constructors

	/** default constructor */
	public Block() {
	}

	/** full constructor */
	public Block(Testpaper testpaper, String blockname, String blockdes,
			Set testques) {
		this.testpaper = testpaper;
		this.blockname = blockname;
		this.blockdes = blockdes;
		this.testques=testques;
	}

	// Property accessors

	public Integer getBlockid() {
		return this.blockid;
	}

	public void setBlockid(Integer blockid) {
		this.blockid = blockid;
	}

	public Testpaper getTestpaper() {
		return this.testpaper;
	}

	public void setTestpaper(Testpaper testpaper) {
		this.testpaper = testpaper;
	}

	public String getBlockname() {
		return this.blockname;
	}

	public void setBlockname(String blockname) {
		this.blockname = blockname;
	}

	public String getBlockdes() {
		return this.blockdes;
	}

	public void setBlockdes(String blockdes) {
		this.blockdes = blockdes;
	}

	public Set getTestques() {
		return testques;
	}

	public void setTestques(Set testques) {
		this.testques = testques;
	}
}