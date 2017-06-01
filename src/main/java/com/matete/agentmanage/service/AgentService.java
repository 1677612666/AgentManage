package com.matete.agentmanage.service;

import java.util.Date;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.matete.agentmanage.common.GlobalSettings;
import com.matete.agentmanage.model.Agent;

public class AgentService {
	public static final Agent agentDao = new Agent().dao();

	/**
	 * 获取代理列表
	 * 
	 * @param pageNumber
	 * @param parentId
	 * @return
	 */
	public Page<Agent> getAgentRecord(int pageNumber, int parentId, String searchContent) {
		if (StringUtils.isNotBlank(searchContent)) {
			Page<Agent> agent = null;
			agent = agentDao.paginate(pageNumber, GlobalSettings.PAGE_SIZE, "select *",
					"from agent where parentId = ? and State = ? and ID = ?", parentId, GlobalSettings.AGENT_STATE_VIA,
					searchContent);
			if (agent.getList().size() == 0) {
				agent = agentDao.paginate(pageNumber, GlobalSettings.PAGE_SIZE, "select *",
						"from agent where parentId = ? and State = ? and Name like ?", parentId,
						GlobalSettings.AGENT_STATE_VIA, "%" + searchContent + "%");
			}
			return agent;
		}

		return agentDao.paginate(pageNumber, GlobalSettings.PAGE_SIZE, "select *",
				"from agent where parentId = ? and State = ?", parentId, GlobalSettings.AGENT_STATE_VIA);
	}

	/**
	 * 获取指定代理信息
	 * 
	 * @param ID
	 * @return
	 */
	public Agent getAgent(String ID) {
		return agentDao.findById(ID);
	}

	/**
	 * 更新代理信息
	 * 
	 * @param ID
	 * @param phone
	 * @param password
	 * @param QQ
	 * @param maxAgentCount
	 * @return
	 */
	public boolean agentEdit(String ID, String phone, String password, String QQ, int maxAgentCount) {
		if (StringUtils.isNotBlank(password)) {
			// 修改密码更新
			return agentDao.findById(ID).setPhone(phone).setPassword(DigestUtils.md5Hex(password)).setQQ(QQ)
					.setMaxAgentCount(maxAgentCount).update();
		}
		return agentDao.findById(ID).setPhone(phone).setQQ(QQ).setMaxAgentCount(maxAgentCount).update();
	}

	/**
	 * 添加代理
	 * 
	 * @param agent
	 */
	public boolean agentAdd(Agent agent) {
		return agent.setPassword(DigestUtils.md5Hex(agent.getPassword())).setState(0).setCreateTime(new Date()).save();
	}

	/**
	 * 判断该用户是否可以创建代理
	 * 
	 * @param id
	 * @return
	 */
	public boolean seeAgentCount(int id) {
		Agent agent = agentDao.findById(id);
		if (agent.getMaxAgentCount() > agent.getAgentCount()) {
			return true;
		}
		return false;
	}

	/**
	 * 将我的代理数+1
	 * 
	 * @param parentId
	 */
	public void AgentCountAddOne(int parentId) {
		// 获取添加代理后一共有多少下级代理个数
		Long num = Db.queryLong("select count(*)from agent where parentId = ?", parentId);
		// 写入代理的下级代理数中
		agentDao.findById(parentId).setAgentCount(Integer.parseInt(num.toString())).update();
	}

	/**
	 * 查询未审核代理列表
	 * 
	 * @return
	 */
	public Page<Agent> getAgentAuditingList(int pageNumber) {

		return agentDao.paginate(pageNumber, GlobalSettings.PAGE_SIZE, "select *", "from agent where State = ?",
				GlobalSettings.AGENT_STATE_AUDITING);
	}

	/**
	 * 审核通过
	 * 
	 * @param ID
	 */
	public void agentAuditingVia(String ID) {
		agentDao.findById(ID).setState(GlobalSettings.AGENT_STATE_VIA).update();
	}

	/**
	 * 更新审核中的代理信息
	 * 
	 * @param auditing
	 * @param agent
	 * @return
	 */
	public boolean agentAuditingEdit(String auditing, Agent agent) {
		Agent consult = agentDao.findById(agent.getID());
		if (StringUtils.isNotBlank(auditing)) {
			// 执行只更新，并不通过审核操作
			if (StringUtils.isNotBlank(agent.getPassword())) {
				// 密码被修改
				return agent.setPassword(DigestUtils.md5Hex(agent.getPassword())).update();
			}
			return agent.setPassword(consult.getPassword()).update();
		}
		// 更新并通过审核
		if (StringUtils.isNotBlank(agent.getPassword())) {
			// 密码被修改
			return agent
					.setPassword(DigestUtils.md5Hex(agent.getPassword()))
					.setState(GlobalSettings.AGENT_STATE_VIA)
					.update();
		}
		return agent.setPassword(consult.getPassword()).setState(GlobalSettings.AGENT_STATE_VIA).update();
	}

	/**
	 * 判断是否存在该代理
	 * 
	 * @param agent
	 */
	public Agent existAgent(Agent agent) {
		Agent parentAgent = agentDao.findFirst("select * from agent where ID = ?", agent.getParentId());
		return parentAgent;
	}

}
