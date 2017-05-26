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

    <form class="form-signin" action="index.html">
        <div class="form-signin-heading text-center">
            <h1 class="sign-title">注册</h1>
            <img src="${BASE_PATH}/images/login-logo.png" alt=""/>
        </div>


        <div class="login-wrap">
            <p> 请输入个人信息</p>
            <input type="text" autofocus="" placeholder="邮箱" class="form-control">
            <input type="password" placeholder="密码" class="form-control">
            <input type="password" placeholder="确认密码" class="form-control">
            <label class="checkbox">
                <input type="checkbox" value="agree this condition"> 同意注册协议
            </label>
            <button type="submit" class="btn btn-lg btn-login btn-block">
                <i class="fa fa-check"></i>
            </button>

            <div class="registration">
                已注册
                <a href="login" class="">
                    登录
                </a>
            </div>

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
