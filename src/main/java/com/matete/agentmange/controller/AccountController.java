package com.matete.agentmange.controller;

import com.alibaba.druid.util.StringUtils;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.matete.agentmanage.model.ProxyUser;
import com.matete.agentmanage.service.LoginService;
import com.matete.agentmanage.service.impl.LoginServiceImpl;
import com.matete.agentmange.validator.LoginValidator;

public class AccountController extends Controller {

	LoginService loginService = new LoginServiceImpl();

	public void index() {
		redirect("/login");
	}

	/**
	 * 登录页
	 */
	public void login() {
		renderJsp("login.jsp");
	}

	/**
	 * 注册页
	 */
	public void register() {
		renderJsp("register.jsp");
	}

	/**
	 * 登录
	 */
	// @Before(LoginValidator.class)
	public void loginAction() {
		String telephone = getPara("telephone");
		String password = getPara("password");
		boolean falg = loginService.login(telephone, password);
		if (falg) {
			redirect("/frame");
		} else {
			setAttr("tele", telephone);
			setAttr("passError", "账号密码不匹配");
			forwardAction("/login"); // 跳转
			// render("/login"); // 重定向
		}
	}
}
