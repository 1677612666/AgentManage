package com.matete.agentmanage.common;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.ext.handler.ContextPathHandler;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;
import com.matete.agentmange.interceptor.LoginInterceptor;

/**
 * API引导式配置
 */
public class JfinalConfig extends JFinalConfig {
	
	/**
	 * 配置常量
	 */
	public void configConstant(Constants me) {
		// 加载少量必要配置，随后可用PropKit.get(...)获取值
		PropKit.use("config.txt");
		me.setDevMode(PropKit.getBoolean("devMode", false));
		
		// 视图类型
		me.setViewType(ViewType.JSP);
		
		// 参数分隔符
		me.setUrlParaSeparator("&");
	}
	
	/**
	 * 配置路由
	 */
	public void configRoute(Routes me) {
	    me.add(new AdminRoute());
	}
	
	public void configEngine(Engine me) {
		//me.addSharedFunction("/common/_layout.html");
		//me.addSharedFunction("/common/_paginate.html");
	}
	
	/**
	 * 配置插件
	 */
	public void configPlugin(Plugins me) {
//		// 配置C3p0数据库连接池插件
//		DruidPlugin druidPlugin = new DruidPlugin(PropKit.get("jdbcUrl"), PropKit.get("user"), PropKit.get("password").trim());
//		me.add(druidPlugin);
//		
//		// 配置ActiveRecord插件
//		ActiveRecordPlugin arp = new ActiveRecordPlugin(druidPlugin);
//		// 所有映射在 MappingKit 中自动化搞定
//		_MappingKit.mapping(arp);
//		me.add(arp);
	}
	
	public static DruidPlugin createDruidPlugin() {
		return new DruidPlugin(PropKit.get("jdbcUrl"), PropKit.get("user"), PropKit.get("password").trim());
	}
	
	/**
	 * 配置全局拦截器
	 */
	public void configInterceptor(Interceptors me) {
		//me.add(new LoginInterceptor());
	}
	
	/**
	 * 配置处理器
	 */
	public void configHandler(Handlers me) {
		me.add(new ContextPathHandler("BASE_PATH"));
	}
}
