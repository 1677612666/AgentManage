package com.matete.agentmange.controller;

import java.util.List;

import org.apache.commons.lang3.Validate;

import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.matete.agentmanage.common.utils.CommonUtils;
import com.matete.agentmanage.model.Agent;
import com.matete.agentmanage.model.ResponseResult;
import com.matete.agentmanage.service.AccountService;
import com.matete.agentmanage.service.AgentService;

/**
 * 代理模块
 *
 */
public class AgentController extends Controller {

	public static final AgentService agentService = new AgentService();
	public static final AccountService accountService = new AccountService();

	/**
	 * 跳到代理列表页面
	 */
	public void index() {
		// 如果是搜索代理获取搜索内容
		String searchContent = getPara("searchContent");
		setSessionAttr("searchContent", searchContent);
		renderJsp("agent_list.jsp");
	}

	/**
	 * 加载代理列表
	 */
	public void getAgentList() {
		String searchContent = getSessionAttr("searchContent");
		removeSessionAttr("searchContent");
		Page<Agent> agents = agentService.getAgentRecord(getParaToInt("pageIndex"),
				CommonUtils.getAgentBySession(this).getID(), searchContent);
		renderJson(agents);
	}

	/**
	 * 跳转到代理编辑页面
	 */
	public void getAgent() {
		String id = getPara("id");
		Validate.notBlank(id);
		Agent agent = agentService.getAgent(id);
		// 空参拦截
		setAttr("subordinateAgent", agent);
		renderJsp("agent_edit.jsp");
	}

	/**
	 * 更新代理信息
	 */
	public void agentEdit() {
		String ID = getPara("ID");
		String Phone = getPara("Phone");
		String Password = getPara("Password");
		String QQ = getPara("QQ");
		int MaxAgentCount;
		try {
			MaxAgentCount = getParaToInt("MaxAgentCount");
		} catch (Exception e) {
			MaxAgentCount = 0;
		}

		// 空参拦截
		Validate.notBlank(ID);

		boolean flag = agentService.agentEdit(ID, Phone, Password, QQ, MaxAgentCount);
		if (flag) {
			renderJson(new ResponseResult(true));
		} else {
			renderJson(new ResponseResult(false, "修改失败"));
		}

	}

	/**
	 * 跳转到增加代理页面
	 */
	public void addUI() {
		// 判断是否可以创建代理
		boolean flag = agentService.seeAgentCount(getParaToInt("id"));
		if (flag) {
			// 查询代理级别下拉
			List<Record> agentLevelList = accountService.getPropertyList("AgentLevel");
			setAttr("agentLevelList", agentLevelList);
			renderJsp("agent_add.jsp");
		}
	}

	/**
	 * 新增一个代理
	 */
	public void agentAdd() {
		Agent agent = getModel(Agent.class);
		// 空参拦截
		Validate.notBlank(agent.getPhone());
		Validate.notBlank(agent.getPassword());
		if (agentService.agentAdd(agent)) {
			// 已代理数+1
			agentService.AgentCountAddOne(agent.getParentId());
			renderJson(new ResponseResult(true));
		} else {
			renderJson(new ResponseResult(false, "添加失败"));
		}
	}

	/**
	 * 跳到审核代理页面
	 */
	public void agentAuditing() {
		renderJsp("agent_auditing.jsp");
	}

	/**
	 * 跳转到修改未审核代理页面
	 */
	public void agentAuditingEditUI() {
		// System.out.println(getRequest().getRequestURL());
		String ID = getPara("ID");
		// 空参拦截
		Validate.notBlank(ID);
		// 查询代理级别下拉
		List<Record> agentLevelList = accountService.getPropertyList("AgentLevel");
		// 查询修改代理信息
		Agent agent = agentService.getAgent(ID);
		setAttr("agentLevelList", agentLevelList);
		setAttr("subordinateAgent", agent);
		renderJsp("agentAuditing_edit.jsp");
	}

	/**
	 * 更新未审核的代理信息(包含通过审核)
	 */
	public void agentAuditingEdit() {
		String auditing = getPara("auditing");
		Agent agent = getModel(Agent.class);
		// 空参校验
		Validate.notBlank(agent.getPhone());
		// 判断是否存在此代理
		Agent ParentAgent = agentService.existAgent(agent);
		if (ParentAgent != null) {
			// 判断该填写的代理是否有资格接受该审核代理
			if (ParentAgent.getAgentLevel() < agent.getAgentLevel()) {
				boolean flag = agentService.agentAuditingEdit(auditing, agent);
				if (flag) {
					renderJson(new ResponseResult(true));
				} else {
					renderJson(new ResponseResult(false, "修改失败"));
				}
			} else {
				renderJson(new ResponseResult(false, "上级代理不能低于此申请代理级别"));
			}
		} else {
			renderJson(new ResponseResult(false, "上级代理不存在"));
		}
	}

	/**
	 * 查询未通过审核的代理
	 */
	public void getAgentAuditingList() {
		Page<Agent> agents = agentService.getAgentAuditingList(getParaToInt("pageIndex"));
		renderJson(agents);
	}

	/**
	 * 审核通过
	 */
	public void agentAuditingVia() {
		String ID = getPara("ID");
		// 空参拦截
		Validate.notBlank(ID);
		agentService.agentAuditingVia(ID);
		redirect("/agentAuditing");
	}
}
