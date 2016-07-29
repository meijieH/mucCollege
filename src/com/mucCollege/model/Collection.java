package com.mucCollege.model;

/**
 * Collection entity. @author MyEclipse Persistence Tools
 */

public class Collection implements java.io.Serializable {

	// Fields

	private Integer collectionid;
	private Question question;
	private User user;
	private String collectionname;

	// Constructors

	/** default constructor */
	public Collection() {
	}

	/** full constructor */
	public Collection(Question question, User user, String collectionname) {
		this.question = question;
		this.user = user;
		this.collectionname = collectionname;
	}

	// Property accessors

	public Integer getCollectionid() {
		return this.collectionid;
	}

	public void setCollectionid(Integer collectionid) {
		this.collectionid = collectionid;
	}

	public Question getQuestion() {
		return this.question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getCollectionname() {
		return this.collectionname;
	}

	public void setCollectionname(String collectionname) {
		this.collectionname = collectionname;
	}

}