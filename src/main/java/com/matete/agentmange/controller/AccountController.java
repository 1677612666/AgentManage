package com.matete.agentmange.controller;

import java.util.List;

import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Record;
import com.matete.agentmanage.model.ResponseResult;
import com.matete.agentmanage.service.AccountService;

public class AccountController extends Controller {

    private static AccountService accountService = new AccountService();

    public void index() {
        redirect("/login");
    }

    /**
     * 登录页
     */
    public void login() {
        renderJsp("login.jsp");
    }

    /**
     * 注册页
     */
    public void register() {
        // 查询代理级别下拉
        List<Record> agentLevelList = accountService
                .getPropertyList("AgentLevel");
        setAttr("agentLevelList", agentLevelList);
        renderJsp("register.jsp");
    }

    /**
     * 登录
     */
    public void loginAction() {
        String phone = getPara("phone");
        String password = getPara("password");
        boolean isSuccess = accountService.login(phone, password);
        if (isSuccess) {
            renderJson(new ResponseResult(true));
        } else {
            renderJson(new ResponseResult(false, "用户名或密码错误"));

        }
    }

    /**
     * 注册
     */
    public void registerAction() {
        String phone = getPara("phone");
        String password = getPara("password");
        String name = getPara("name");
        String qq = getPara("qq");
        int agentLevel = getParaToInt("agentLevel");

        boolean isSuccess = accountService.register(
                phone,
                password,
                name,
                qq,
                agentLevel);
        if (isSuccess) {
            renderJson(new ResponseResult(true));
        } else {

        }
    }
}
