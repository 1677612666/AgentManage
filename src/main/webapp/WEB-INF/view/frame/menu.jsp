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
				<div class="media-body">
					<h4>
						<a href="#">橙子</a>
					</h4>
					<span>1677612666@qq.com</span>
				</div>
			</div>

			<h5 class="left-nav-title">帐户信息</h5>
			<ul class="nav nav-pills nav-stacked custom-nav">
				<!-- <li><a href="#"><i class="fa fa-user"></i> <span>个人信息</span></a></li>
				<li><a href="#"><i class="fa fa-cog"></i> <span>设置</span></a></li> -->
				<li><a href="login"><i class="fa fa-sign-out"></i> <span>退出系统</span></a></li>
			</ul>
		</div>

		<!--sidebar nav start-->
		<ul class="nav nav-pills nav-stacked custom-nav">
			<!-- 单挑选项 -->
			<li class="active"><a href="frame"><i
					class="fa fa-home"></i> <span>我的信息</span></a></li>
			<li><a href="${BASE_PATH}/member"><i class="fa fa-tasks"></i> <span>我的会员</span></a></li>
			<!-- 菜单选项 -->
			<li class="menu-list"><a href=""><i class="fa fa-male"></i>
					<span>我的代理</span></a>
				<ul class="sub-menu-list">
					<li><a href="blank_page.html">增加代理</a></li>
					<li><a href="boxed_view.html">代理列表</a></li>
				</ul></li>
				
			<li class="menu-list"><a href=""><i class="fa fa-yen"></i>
					<span>充值</span></a>
				<ul class="sub-menu-list">
					<li><a href="general.html">充值房卡</a></li>
					<li><a href="buttons.html">充值记录</a></li>
				</ul></li>
			<li class="menu-list"><a href=""><i class="fa fa-cogs"></i>
					<span>操作记录</span></a>
				<ul class="sub-menu-list">
					<li><a href="grids.html">登录记录</a></li>
				</ul></li>

			<li class="menu-list"><a href=""><i class="fa fa-users"></i>
					<span>管理代理&会员</span></a>
				<ul class="sub-menu-list">
<<<<<<< Updated upstream
					<li><a href="mail.html">减少房卡</a></li>
					<li><a href="mail_compose.html">冻结账户</a></li>
					<li><a href="mail_view.html">代理审核</a></li>
=======
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
					<li><a href="${BASE_PATH}/frame/table">响应式表格</a></li>
					<li><a href="editable_table.html">编辑表格</a></li>
>>>>>>> Stashed changes
				</ul></li>

			<li class="menu-list"><a href=""><i class="fa fa-wrench"></i>
					<span>游戏系统管理</span></a>
				<ul class="sub-menu-list">
					<li><a href="form_layouts.html">广告系统</a></li>
					<li><a href="form_advanced_components.html">公告系统</a></li>
				</ul></li>

		</ul>
		<!--sidebar nav end-->

	</div>
</div>