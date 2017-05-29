<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">
<link rel="shortcut icon" href="#" type="image/png">
<title>我的代理</title>

<!--responsive table-->
<link href="${BASE_PATH}/css/table-responsive.css" rel="stylesheet" />

<link href="${BASE_PATH}/css/style.css" rel="stylesheet">
<link href="${BASE_PATH}/css/style-responsive.css" rel="stylesheet">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
</head>

<body class="sticky-header">

	<section> <!-- left side start--> <jsp:include
		page="../frame/menu.jsp"></jsp:include> <!-- left side end--> <!-- main content start-->
	<div class="main-content">

		<!-- header section start-->
		<jsp:include page="../frame/top.jsp"></jsp:include>
		<!-- header section end-->

		<!-- page heading start-->
		<div class="page-heading">
			<h3>我的代理</h3>
			 <ul class="breadcrumb">
                <li class="active"> 代理列表 </li>
            </ul>
		</div>
		<!-- page heading end-->

		<!--body wrapper start-->
		<div class="wrapper">
			<div class="row">
				<div class="col-sm-12">
					<section class="panel"> <header class="panel-heading">
					代理信息 &nbsp;&nbsp;&nbsp;
					<a><i class="fa fa-search"></i></a> </header>
					<div class="panel-body">
						<section id="unseen">
						<table class="table table-bordered table-hover table-striped table-condensed">
							<thead>
								<tr>
									<th>会员ID</th>
									<th>身份证号</th>
									<th class="numeric">微信昵称</th>
									<th class="numeric">真实姓名</th>
									<th class="numeric">总购房卡数</th>
									<th class="numeric">剩余房卡数</th>
									<th class="numeric">性别</th>
									<th class="numeric">上次登录时间</th>
									<th class="numeric">操作</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>123456</td>
									<td>123456789456</td>
									<td class="numeric">麻特特</td>
									<td class="numeric">葫芦娃</td>
									<td class="numeric">500</td>
									<td class="numeric">323</td>
									<td class="numeric">男</td>
									<td class="numeric">2017/5/28 22:35:51</td>
									<td class="numeric"><a><i class="fa fa-wrench"></i> </a></td>
								</tr>
								<tr>
									<td>123456</td>
									<td>123456789456</td>
									<td class="numeric">麻特特</td>
									<td class="numeric">葫芦娃</td>
									<td class="numeric">500</td>
									<td class="numeric">323</td>
									<td class="numeric">男</td>
									<td class="numeric">2017/5/28 22:35:51</td>
									<td class="numeric"><a><i class="fa fa-wrench"></i> </a></td>
								</tr>
							</tbody>
						</table>
						</section>
					</div>
					</section>
				</div>
			</div>
		</div>
		<!--body wrapper end-->

		<!--footer section start-->
		<jsp:include page="../frame/foot.jsp"></jsp:include>
		<!--footer section end-->
	</div>
	<!-- main content end--> </section>

	<!-- Placed js at the end of the document so the pages load faster -->
	<script src="${BASE_PATH}/js/jquery-1.10.2.min.js"></script>
	<script src="${BASE_PATH}/js/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="${BASE_PATH}/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="${BASE_PATH}/js/bootstrap.min.js"></script>
	<script src="${BASE_PATH}/js/modernizr.min.js"></script>
	<script src="${BASE_PATH}/js/jquery.nicescroll.js"></script>

	<!--common scripts for all pages-->
	<script src="${BASE_PATH}/js/scripts.js"></script>

</body>
</html>
