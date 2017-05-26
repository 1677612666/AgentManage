package com.matete.agentmange.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;

/**
 * 登录拦截器
 * 
 */
public class LoginInterceptor implements Interceptor {

    @Override
    public void intercept(Invocation inv) {
        // TODO Auto-generated method stub
        inv.invoke();
    }

}
