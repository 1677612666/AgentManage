package com.matete.agentmange.controller;

import com.jfinal.core.Controller;

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
}
