package com.mucCollege.aop;

import com.mucCollege.model.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
/**
 * AOP切面编程拦截，共有3个拦截器，用于检查方法权限
 * TeacherInterceptor，该拦截器用于检查当前用户是否属于Teacher组，具体使用方法请参加struts.xml
 * @author 杨赟
 */
@SuppressWarnings("serial")
public class TeacherInterceptor extends AbstractInterceptor{
	public String intercept(ActionInvocation ai) throws Exception {
		Object teacher=ai.getInvocationContext().getSession().get("user");
		if(teacher==null){
			ai.getStack().set("message", "非法操作，权限异常！");
			return "exception";
		}
		if(teacher instanceof User) {
			return ai.invoke();
		}
		ai.getStack().set("message", "非法操作，权限异常！");
		return "exception";
	}
}