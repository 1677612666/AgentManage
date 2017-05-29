<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- header section start-->
<div class="header-section">

	<!--toggle button start-->
	<a class="toggle-btn"><i class="fa fa-bars"></i></a>
	<!--toggle button end-->
	<!--notification menu start -->
	<div class="menu-right">
		<ul class="notification-menu">
			<!-- PC端 个人资料全局显示 -->
			<li><a href="#" class="btn btn-default dropdown-toggle"
				data-toggle="dropdown"> <b>
				<c:if test="${agent.agentLevel==0}">
					公司账号:
				</c:if> <c:if test="${agent.agentLevel==1}">
					地区代理:
				</c:if> <c:if test="${agent.agentLevel==2}">
					二级代理:
				</c:if> <c:if test="${agent.agentLevel==3}">
					三级代理:
				</c:if> ${agent.name}</b><span class="caret"></span>
				</a>
				<ul class="dropdown-menu dropdown-menu-usermenu pull-right">
					<li><a href="index"><i class="fa fa-user"></i>我的信息</a></li>
					<li><a href="index"><i class="fa fa-wrench"></i>修改个人资料</a></li>
					<li><a href="loginOut"><i class="fa fa-sign-out"></i>退出系统</a></li>
				</ul></li>

		</ul>
	</div>
	<!--notification menu end -->

</div>
<!-- header section end-->
