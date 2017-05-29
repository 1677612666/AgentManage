package com.matete.agentmanage.service;

import com.jfinal.plugin.activerecord.Page;
import com.matete.agentmanage.common.GlobalSettings;
import com.matete.agentmanage.model.Agent;

public class AgentService {
	public static final Agent agentDao = new Agent().dao();

	public Page<Agent> getAgentList(int pageNumber,int parentId) {
		return agentDao.paginate(pageNumber, GlobalSettings.PAGE_SIZE, "select *", "from agent where parentId = "+parentId);
	}

}
