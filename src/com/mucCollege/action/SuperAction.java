package com.mucCollege.action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public abstract class SuperAction extends ActionSupport {
	protected String message;//有关错误的信息。
	/**
	 * 可以在jsp中通过使用<struts:property value="message" />来获取错误的描述，比如用户名密码错误。
	 * @return 有关错误的文字描述
	 */
	public String getMessage() {
		return message;
	}
}