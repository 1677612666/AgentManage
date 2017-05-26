package com.matete.agentmange.controller;

import com.jfinal.core.Controller;

public class AccountController extends Controller {

    
    public void index(){
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
    public void register(){
        renderJsp("register.jsp");
    }
}
