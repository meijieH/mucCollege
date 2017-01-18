package com.mucCollege.service;

/**
 * 此类的使用是为了方便在Service返回时同时返回需要跳转的结果result和Service中处理得到的文字描述，比如在注册中使用了已存在的用户会返回message：用户已存在。这个操作是为了方便JSP中能使用<struts:property value="message" />来获取描述。
 * @author 杨赟
 * 
 */
public class ServiceMessage {
	private String result;
	private String message;
	private Object object;
	public String getResult() {
		return result;
	}
	public ServiceMessage() {
	}
	/**
	 * @param result 需要返回跳转的JSP页面
	 * @param message 描述信息
	 * @param object 当方法中生成了需要外传的对象时，可以借由此引用类型传递
	 */
	public ServiceMessage(String result, String message) {
		this.result = result;
		this.message = message;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Object getObject() {
		return object;
	}
	public void setObject(Object object) {
		this.object = object;
	}
}