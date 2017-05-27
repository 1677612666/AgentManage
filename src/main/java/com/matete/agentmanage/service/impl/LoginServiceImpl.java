package com.matete.agentmanage.service.impl;

import org.apache.commons.lang3.StringUtils;

import com.matete.agentmanage.model.ProxyUser;
import com.matete.agentmanage.service.LoginService;

public class LoginServiceImpl implements LoginService {

	private static final ProxyUser dao = new ProxyUser().dao();

	@Override
	public boolean login(String telephone, String password) {
		
		// if(StringUtils.isNotBlank(password)){
		//
		// }
		
		ProxyUser user = dao.findFirst("select * from proxy_user where telephone = ? and password = ? ", telephone,
				password);
		if (user == null) {
			return false;
		}
		return true;
	}

}
