package com.matete.agentmanage.service;

import com.matete.agentmanage.model.ProxyUser;

public interface LoginService {

	/**
	 * 登录
	 * @param telephone
	 * @param password
	 * @return
	 */
	boolean login(String telephone, String password);

}
