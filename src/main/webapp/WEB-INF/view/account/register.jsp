<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content="ThemeBucket"/>
    <link rel="shortcut icon" href="#" type="image/png"/>

    <title>注册</title>

    <link href="${BASE_PATH}/css/style.css" rel="stylesheet"/>
    <link href="${BASE_PATH}/css/style-responsive.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="${BASE_PATH}/js/html5shiv.js"></script>
    <script src="${BASE_PATH}/js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="login-body">

<div class="container">

    <form class="form-signin" method="post" action="index">
        <div class="form-signin-heading text-center">
            <h1 class="sign-title">麻特特代理中心注册</h1>
            <!--<img src="images/login-logo.png" alt=""/>-->
        </div>


        <div class="login-wrap">
            <p> 请输入个人信息</p>
            <input type="text" name="telephone" placeholder="手机号码" class="form-control">
            <input type="password" name="password" placeholder="密码" class="form-control">
            <input type="password" name="passwordtow" placeholder="确认密码" class="form-control">
            <input type="text" name="name" placeholder="新代理姓名" class="form-control">
            <input type="text" name="QQ" placeholder="联系QQ" class="form-control">
            <span><b> 选择代理 </b>&nbsp;&nbsp;&nbsp;</span>
           	<select id="example-multiple-optgroups" name="agent">
				<option value="1" selected=”selected”>地区代理<option value="2" >二级代理<option value="3" >三级代理
			</select>
            <button type="submit"   class="btn btn-lg btn-login btn-block">
                <!-- <i class="fa fa-check"></i> -->
                <span>提交注册</span>
            </button>
        </div>

    </form>

</div>



<!-- Placed js at the end of the document so the pages load faster -->

<!-- Placed js at the end of the document so the pages load faster -->
<script src="${BASE_PATH}/js/jquery.min.js"></script>
<script src="${BASE_PATH}/js/bootstrap.min.js"></script>
<script src="${BASE_PATH}/js/modernizr.min.js"></script>

</body>
</html>
