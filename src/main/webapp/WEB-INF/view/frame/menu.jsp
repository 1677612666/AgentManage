<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- left side start-->
<div class="left-side sticky-left-side">

	<!--logo and iconic logo start-->
	<div class="logo">
		<a href="index.html"><img src="${BASE_PATH}/images/logo.png"
			alt="" /></a>
	</div>

	<div class="logo-icon text-center">
		<a href="index.html"><img src="${BASE_PATH}/images/logo_icon.png"
			alt="" /></a>
	</div>
	<!--logo and iconic logo end-->

	<div class="left-side-inner">

		<!-- visible to small devices only -->
		<div class="visible-xs hidden-sm hidden-md hidden-lg">
			<div class="media logged-user">
				<img alt="" src="${BASE_PATH}/images/photos/user-avatar.png"
					class="media-object" />
				<div class="media-body">
					<h4>
						<a href="#">橙子</a>
					</h4>
					<span>1677612666@qq.com</span>
				</div>
			</div>

			<h5 class="left-nav-title">帐户信息</h5>
			<ul class="nav nav-pills nav-stacked custom-nav">
				<li><a href="#"><i class="fa fa-user"></i> <span>个人信息</span></a></li>
				<li><a href="#"><i class="fa fa-cog"></i> <span>设置</span></a></li>
				<li><a href="#"><i class="fa fa-sign-out"></i> <span>退出系统</span></a></li>
			</ul>
		</div>

		<!--sidebar nav start-->
		<ul class="nav nav-pills nav-stacked custom-nav">
			<li class="active"><a href="index.html"><i
					class="fa fa-home"></i> <span>仪表盘</span></a></li>
			<li class="menu-list"><a href=""><i class="fa fa-laptop"></i>
					<span>布局</span></a>
				<ul class="sub-menu-list">
					<li><a href="blank_page.html">空白页</a></li>
					<li><a href="boxed_view.html">盒装页</a></li>
					<li><a href="leftmenu_collapsed_view.html">侧边栏折叠</a></li>
					<li><a href="horizontal_menu.html">水平菜单</a></li>

				</ul></li>
			<li class="menu-list"><a href=""><i class="fa fa-book"></i>
					<span>UI元素</span></a>
				<ul class="sub-menu-list">
					<li><a href="general.html">普通</a></li>
					<li><a href="buttons.html">按钮</a></li>
					<li><a href="tabs-accordions.html">标签 & 手风琴</a></li>
					<li><a href="typography.html">排版</a></li>
					<li><a href="slider.html">滑块</a></li>
					<li><a href="panels.html">面板</a></li>
				</ul></li>
			<li class="menu-list"><a href=""><i class="fa fa-cogs"></i>
					<span>组件</span></a>
				<ul class="sub-menu-list">
					<li><a href="grids.html">网格</a></li>
					<li><a href="gallery.html">媒体库</a></li>
					<li><a href="calendar.html">日历</a></li>
					<li><a href="tree_view.html">树形视图</a></li>
					<li><a href="nestable.html">拖拽树</a></li>

				</ul></li>

			<li><a href="fontawesome.html"><i class="fa fa-bullhorn"></i>
					<span>字体图标</span></a></li>

			<li class="menu-list"><a href=""><i class="fa fa-envelope"></i>
					<span>邮箱</span></a>
				<ul class="sub-menu-list">
					<li><a href="mail.html">收件箱</a></li>
					<li><a href="mail_compose.html">写邮件</a></li>
					<li><a href="mail_view.html">查看邮件</a></li>
				</ul></li>

			<li class="menu-list"><a href=""><i class="fa fa-tasks"></i>
					<span>表单</span></a>
				<ul class="sub-menu-list">
					<li><a href="form_layouts.html">表单布局</a></li>
					<li><a href="form_advanced_components.html">表单组件</a></li>
					<li><a href="form_wizard.html">表单向导</a></li>
					<li><a href="form_validation.html">表单验证</a></li>
					<li><a href="editors.html">编辑器</a></li>
					<li><a href="inline_editors.html">内联编辑器</a></li>
					<li><a href="pickers.html">时间控件</a></li>
					<li><a href="dropzone.html">Dropzone文件上传插件</a></li>
					<li><a href="http://www.weidea.net"> More</a></li>
				</ul></li>
			<li class="menu-list"><a href=""><i
					class="fa fa-bar-chart-o"></i> <span>统计图表</span></a>
				<ul class="sub-menu-list">
					<li><a href="flot_chart.html"> Flot Charts</a></li>
					<li><a href="morris.html"> Morris Charts</a></li>
					<li><a href="chartjs.html"> Chartjs</a></li>
					<li><a href="c3chart.html"> C3 Charts</a></li>
				</ul></li>
			<li class="menu-list"><a href="#"><i class="fa fa-th-list"></i>
					<span>数据表格</span></a>
				<ul class="sub-menu-list">
					<li><a href="basic_table.html">基础表格</a></li>
					<li><a href="dynamic_table.html">高级表格</a></li>
					<li><a href="responsive_table.html">响应式表格</a></li>
					<li><a href="editable_table.html">编辑表格</a></li>
				</ul></li>

			<li class="menu-list"><a href="#"><i
					class="fa fa-map-marker"></i> <span>地图</span></a>
				<ul class="sub-menu-list">
					<li><a href="google_map.html">谷歌地图</a></li>
					<li><a href="vector_map.html">Vector地图</a></li>
				</ul></li>
			<li class="menu-list"><a href=""><i class="fa fa-file-text"></i>
					<span>补充页面</span></a>
				<ul class="sub-menu-list">
					<li><a href="profile.html">个人信息</a></li>
					<li><a href="invoice.html">订单</a></li>
					<li><a href="pricing_table.html">价格表格</a></li>
					<li><a href="timeline.html">时间轴</a></li>
					<li><a href="blog_list.html">博客列表</a></li>
					<li><a href="blog_details.html">博客详情</a></li>
					<li><a href="directory.html">目录</a></li>
					<li><a href="chat.html">聊天</a></li>
					<li><a href="404.html">404错误页面</a></li>
					<li><a href="500.html">500错误页面</a></li>
					<li><a href="registration.html">注册页</a></li>
					<li><a href="lock_screen.html">锁屏页</a></li>
				</ul></li>
			<li><a href="login.html"><i class="fa fa-sign-in"></i> <span>登录页</span></a></li>

		</ul>
		<!--sidebar nav end-->

	</div>
</div>