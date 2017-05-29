package com.matete.agentmange.controller;

import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Page;
import com.matete.agentmanage.common.utils.CommonUtils;
import com.matete.agentmanage.model.Agent;
import com.matete.agentmanage.service.AgentService;

/**
 * 代理模块
 *
 */
public class AgentController extends Controller {
	
	public static final AgentService agentService = new AgentService();
	
	/**
	 *  跳到代理列表页面
	 */
	public void index(){
		renderJsp("agent_list.jsp");
	}
	
	/**
	 *  加载代理列表
	 */
	public void loadAgentList(){
		Page<Agent> agents = agentService.getAgentList(getParaToInt("pageNumber"),CommonUtils.getAgentBySession(this).getID());
		renderJson(agents);
	}
}
