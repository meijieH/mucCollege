package com.mucCollege.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Question entity. @author MyEclipse Persistence Tools
 */

public class Question implements java.io.Serializable {

	// Fields

	private Integer questionid;
	private Subject subject;
	private User user;
	private Quetype quetype;
	private String label;
	private String stem;
	private String annotation;
	private String answer;
	private Integer quescore;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String option5;
	private String option6;
	private String option7;
	private Boolean isPicture;
	private Boolean isvisiable;
	private Double depth;
	private Set collections = new HashSet(0);
	private Set testques = new HashSet(0);
	private Set testques_1 = new HashSet(0);
	private Set collections_1 = new HashSet(0);
	

	// Constructors

	/** default constructor */
	public Question() {
	}

	/** full constructor */
	public Question(Subject subject, User user, Quetype quetype, String label,
			String stem,String annotation,  String answer,Integer quescore, String option1,
			String option2, String option3, String option4, String option5,
			String option6, String option7, Boolean isPicture,
			Boolean isvisiable,Double depth, Set collections, Set testques,
			Set testques_1, Set collections_1) {
		this.subject = subject;
		this.user = user;
		this.quetype = quetype;
		this.label = label;
		this.stem = stem;
		this.annotation=annotation;
		this.answer = answer;
		this.quescore = quescore;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.option5 = option5;
		this.option6 = option6;
		this.option7 = option7;
		this.isPicture = isPicture;
		this.isvisiable = isvisiable;
		this.depth=depth;
		this.collections = collections;
		this.testques = testques;
		this.testques_1 = testques_1;
		this.collections_1 = collections_1;
	}

	// Property accessors

	public Integer getQuestionid() {
		return this.questionid;
	}

	public void setQuestionid(Integer questionid) {
		this.questionid = questionid;
	}

	public Subject getSubject() {
		return this.subject;
	}

	public void setSubject(Subject subject) {
		this.subject = subject;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Quetype getQuetype() {
		return this.quetype;
	}

	public void setQuetype(Quetype quetype) {
		this.quetype = quetype;
	}

	public String getLabel() {
		return this.label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getStem() {
		return this.stem;
	}

	public void setStem(String stem) {
		this.stem = stem;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getAnnotation() {
		return annotation;
	}
	
	public String getAnswer() {
		return this.answer;
	}

	public void setAnnotation(String annotation) {
		this.annotation = annotation;
	}

	public Integer getQuescore() {
		return this.quescore;
	}

	public void setQuescore(Integer quescore) {
		this.quescore = quescore;
	}

	public String getOption1() {
		return this.option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	public String getOption2() {
		return this.option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public String getOption3() {
		return this.option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	public String getOption4() {
		return this.option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	public String getOption5() {
		return this.option5;
	}

	public void setOption5(String option5) {
		this.option5 = option5;
	}

	public String getOption6() {
		return this.option6;
	}

	public void setOption6(String option6) {
		this.option6 = option6;
	}

	public String getOption7() {
		return this.option7;
	}

	public void setOption7(String option7) {
		this.option7 = option7;
	}

	public Boolean getIsPicture() {
		return this.isPicture;
	}

	public void setIsPicture(Boolean isPicture) {
		this.isPicture = isPicture;
	}

	public Boolean getIsvisiable() {
		return this.isvisiable;
	}

	public void setIsvisiable(Boolean isvisiable) {
		this.isvisiable = isvisiable;
	}

	public Double getDepth() {
		return depth;
	}

	public void setDepth(Double depth) {
		this.depth = depth;
	}

	public Set getCollections() {
		return this.collections;
	}

	public void setCollections(Set collections) {
		this.collections = collections;
	}

	public Set getTestques() {
		return this.testques;
	}

	public void setTestques(Set testques) {
		this.testques = testques;
	}

	public Set getTestques_1() {
		return this.testques_1;
	}

	public void setTestques_1(Set testques_1) {
		this.testques_1 = testques_1;
	}

	public Set getCollections_1() {
		return this.collections_1;
	}

	public void setCollections_1(Set collections_1) {
		this.collections_1 = collections_1;
	}

}