package com.matete.agentmange.interceptor;

import javax.servlet.http.HttpSession;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;
import com.matete.agentmanage.common.utils.CommonUtils;
import com.matete.agentmanage.model.Agent;

/**
 * 登录拦截器
 * 
 */
public class LoginInterceptor implements Interceptor {

	@Override
	public void intercept(Invocation inv) {
		Controller controller = inv.getController();
		if (CommonUtils.getAgentBySession(controller) != null) {
			inv.invoke();
		} else {
			controller.redirect("/");
		}
	}
}
