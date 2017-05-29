package com.matete.agentmanage.common.utils;

import com.jfinal.core.Controller;
import com.matete.agentmanage.model.Agent;

public class CommonUtils {

	/**
	 * 从session获取agent
	 * 
	 * @param controller
	 * @return
	 */
	public static Agent getAgentBySession(Controller controller) {
		return controller.getSessionAttr("agent");
	}

	/**
	 * 将session中删除对象
	 * 
	 * @param controller
	 */
	public static void delAgentBySession(Controller controller) {
		controller.getSession().removeAttribute("agent");
	}
}
