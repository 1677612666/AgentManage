package com.matete.agentmange.controller;

import java.util.List;

import org.apache.commons.lang3.Validate;

import com.jfinal.aop.Clear;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Record;
import com.matete.agentmanage.common.utils.CommonUtils;
import com.matete.agentmanage.model.Agent;
import com.matete.agentmanage.model.ResponseResult;
import com.matete.agentmanage.service.AccountService;

/**
 * 入口
 *
 */
@Clear
public class AccountController extends Controller {

	private static final AccountService accountService = new AccountService();

	public void index() {
		redirect("/login");
	}

	/**
	 * 登录页
	 */
	public void login() {
		if (CommonUtils.getAgentBySession(this) != null) {
			redirect("/frame");
		} else {
			renderJsp("login.jsp");
		}
	}

	/**
	 * 退出登录
	 */
	public void loginOut() {
		CommonUtils.delAgentBySession(this);
		renderJsp("login.jsp");
	}

	/**
	 * 注册页
	 */
	public void register() {
		// 查询代理级别下拉
		List<Record> agentLevelList = accountService.getPropertyList("AgentLevel");
		setAttr("agentLevelList", agentLevelList);
		renderJsp("register.jsp");
	}

	/**
	 * 登录
	 */
	public void loginAction() {
		String phone = getPara("phone");
		String password = getPara("password");

		// 空参数拦截
		Validate.notBlank(phone);
		Validate.notBlank(password);

		Agent agent = accountService.login(phone, password);
		if (agent != null) {
			if (agent.getState() == 1) {
				setSessionAttr("agent", agent);
				renderJson(new ResponseResult(true));
			} else {
				renderJson(new ResponseResult(false, "该用户未通过审核"));
			}
		} else {
			renderJson(new ResponseResult(false, "用户名或密码错误"));
		}
	}

	/**
	 * 注册
	 */
	public void registerAction() {
		String phone = getPara("phone");
		String password = getPara("password");
		String name = getPara("name");
		String qq = getPara("qq");

		// 空参数拦截
		Validate.notBlank(phone);
		Validate.notBlank(password);
		Validate.notBlank(name);
		Validate.notBlank(qq);

		int agentLevel = getParaToInt("agentLevel");

		boolean isSuccess = accountService.register(phone, password, name, qq, agentLevel);
		if (isSuccess) {
			renderJson(new ResponseResult(true));
		} else {
			renderJson(new ResponseResult(false, "注册失败，请重试"));
		}
	}
}
