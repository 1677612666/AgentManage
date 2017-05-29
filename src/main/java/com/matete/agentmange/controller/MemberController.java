package com.matete.agentmange.controller;

import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.matete.agentmanage.service.MemberService;

/**
 * 会员模块
 *
 */
public class MemberController extends Controller {

	public static final MemberService memberService = new MemberService();

	/**
	 * 跳转到会员列表页面
	 */
	public void index() {
		renderJsp("member_list.jsp");
	}

	/**
	 * 查询会员列表数据
	 */
	public void getMemberList() {
		// 会员数据
		Page<Record> records = memberService.getMemberList(getParaToInt("pageIndex"));
		renderJson(records);
	}
}