package com.matete.agentmange.controller;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.matete.agentmange.validator.LoginValidator;

/**
 * 框架控制器
 */
public class FrameController extends Controller {
    
    /**
     * 主框架
     */
    public void index() {
        render("index.jsp");
    }
    
    public void myMember(){
    	render("member_list.jsp");
    }
}
