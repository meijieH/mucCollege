package com.mucCollege.service;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.mucCollege.dao.TeacherDao;
import com.mucCollege.model.User;

@Service
@Transactional
public class TeacherService {
	@Resource TeacherDao dao;
	private Map<String, Object> session;
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	/**
	 * @return 注册成功返回RegSuccess 失败返回RegFail
	 */
	public ServiceMessage register(User teacher){
		User result=dao.QueryTeacherByTeanum(teacher.getUsernum());
		if(result!=null){
			return new ServiceMessage("regFail","用户已存在");
		}
		try {
			dao.addTeacher(teacher);
		} catch (Exception e) {
			return new ServiceMessage("regFail","DAO异常");
		}
		return new ServiceMessage("regSuccess","注册成功");
	}
	/**
	 * @return 登陆成功返回LoginSuccess 失败返回LoginFail
	 */
	public ServiceMessage login(User teacher){
		if(session.get("user")!=null){
			return new ServiceMessage("loginSuccess","用户已登陆，无需重复登陆，目前登陆的用户姓名："+((User)session.get("user")).getUsername());
		}
		User result=dao.QueryTeacherByTeanum(teacher.getUsernum());
		if(result==null){
			return new ServiceMessage("loginFail","工号不存在");
		}
		if(result.getPassword().endsWith(teacher.getPassword())){
			session.put("user", result);
			return new ServiceMessage("loginSuccess","正常登陆成功，用户姓名："+result.getUsername());
		}
		return new ServiceMessage("loginFail","密码错误");
	}
	/**
	 * 目前只会出现登出成功
	 * @return 登出成功返回LogoutSuccess 失败返回LogoutFail
	 */
	public ServiceMessage logout(){
		session.clear();
		return new ServiceMessage("logoutSuccess","登出成功");
	}
	/**
	 * @return 修改成功返回UpdataSuccess 失败返回UpdataFail
	 */
	public ServiceMessage updata(User teacher) {
		User t=(User) session.get("user");
		User result=dao.QueryTeacherById(t.getUserid());
		if(teacher.getPassword()!=null&&!teacher.getPassword().equals(""))	result.setPassword(teacher.getPassword());
		if(teacher.getPosition()!=null&&!teacher.getPosition().equals(""))	result.setPosition(teacher.getPosition());
		if(teacher.getIntro()!=null&&!teacher.getIntro().equals(""))	result.setIntro(teacher.getIntro());
		if(teacher.getPhonenum()!=null&&!teacher.getPhonenum().equals(""))	result.setPhonenum(teacher.getPhonenum());
		if(teacher.getEmail()!=null&&!teacher.getEmail().equals(""))	result.setEmail(teacher.getEmail());
		try {
			dao.updateTeacher(result);
		} catch (Exception e) {
			return new ServiceMessage("updataFail","DAO异常");
		}
		session.put("teacher", result);
		return new ServiceMessage("updataSuccess","修改成功");
	}
}