package com.matete.agentmange.controller;

import org.apache.commons.lang3.StringUtils;

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
		// 如果是搜索会员获取搜索内容
		String searchContent = getPara("searchContent");
		setSessionAttr("searchContent", searchContent);
		renderJsp("member_list.jsp");
	}

	/**
	 * 查询会员列表数据
	 */
	public void getMemberList() {
		String searchContent = getSessionAttr("searchContent");
		removeSessionAttr("searchContent");
		// 查询会员数据
		Page<Record> mombers = memberService.getMemberRecord(getParaToInt("pageIndex"), searchContent);
		renderJson(mombers);
	}

	/**
	 * 冻结会员
	 */
	public void memberEdit() {
		memberService.memberEdit(getParaToInt("id"));
		redirect("/member");
	}
}