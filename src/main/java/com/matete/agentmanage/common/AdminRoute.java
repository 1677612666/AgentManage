package com.matete.agentmanage.common;

import com.jfinal.config.Routes;
import com.matete.agentmange.controller.FrameController;

/**
 * 后台路由
 */
public class AdminRoute extends Routes {

    @Override
    public void config() {
        setBaseViewPath("/WEB-INF/view");
        add("/frame", FrameController.class, "/frame");
    }

}
