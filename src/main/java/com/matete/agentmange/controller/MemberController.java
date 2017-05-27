package com.matete.agentmange.controller;

import com.jfinal.core.Controller;

/**
 * 会员模块
 *
 */
public class MemberController extends Controller {

	/**
	 *  跳转到会员列表页面
	 */
	public void index(){
		renderJsp("member_list.jsp");
	}
	
}
