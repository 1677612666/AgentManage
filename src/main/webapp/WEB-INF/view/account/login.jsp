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

    <title>登录</title>

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

    <form class="form-signin" method="post" action="${BASE_PATH}/loginAction">
        <div class="form-signin-heading text-center">
            <h1 class="sign-title">登录</h1>
            <img src="${BASE_PATH}/images/login-logo.png" alt=""/>
        </div>
        <div class="login-wrap">
			<input id="tele" type="text" value="${tele}" class="form-control" name="telephone"
				placeholder="手机号"
				onkeyup="if(!/^\d+$/.test(this.value)) tip.innerHTML='必须输入数字，且不能有空格'; else tip.innerHTML='';"><font
				color="red"><b><span id="tip">${phoneMsg }</span></b></font>
			<input id="phone" type="password" class="form-control" name="password" placeholder="密码">
           	<font color="red" ><b><span id="cue" >${passError}</span></b></font>
            <button id="subm" class="btn btn-lg btn-login btn-block" type="submit">
               <!--  <i class="fa fa-check"> -->
                	<span>登录</span>
                <!-- </i> -->
            </button>
            <div class="registration">
                没有帐号?
                <a class="" href="register">
                    注册
                </a>
            </div>
            <label class="checkbox">
                <input type="checkbox" value="remember-me"> 记住帐号
                <span class="pull-right">
                    <a data-toggle="modal" href="#myModal">忘记密码?</a>

                </span>
            </label>

        </div>

        <!-- Modal -->
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">忘记密码 ?</h4>
                    </div>
                    <div class="modal-body">
                        <p>请输入邮箱以重置密码.</p>
                        <input type="text" name="email" placeholder="邮箱" autocomplete="off" class="form-control placeholder-no-fix">

                    </div>
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
                        <button class="btn btn-primary" type="button">提交</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- modal -->

    </form>

</div>



<!-- Placed js at the end of the document so the pages load faster -->

<!-- Placed js at the end of the document so the pages load faster -->
<script src="${BASE_PATH}/js/jquery.min.js"></script>
<script src="${BASE_PATH}/js/bootstrap.min.js"></script>
<script src="${BASE_PATH}/js/modernizr.min.js"></script>
<script src="${BASE_PATH}/js/layer/layer.js"></script>

	<script>
    	$(function(){
   			$("#subm").click(function(){
   				var tele = $("#tele").val();
   				var phone = $("#phone").val();
   				
   				if(tele==""){
   					$("#tip").html("帐号不能为空");
	   				return false;
   				}
   				if(phone==""){
   					$("#cue").html("密码不能为空");
   					return false;
   				}
   			});
    		
// 		   $("#subm").click(function(){
// 			   $.ajax({
// 					type : "POST",
// 					url : "/loginAction",
// 					data : $(tag).serialize(),
// 					async : false,
// 					error : function(response) {
// 						layer.closeAll('loading');
// 						layer.msg(response.responseText);
// 					},
// 					success : function(data) {
// 						alert(data)
// 						layer.closeAll('loading');
// 						if (data.status == true) {
// 							window.location.href = "/personal/view";
// 						} else {
// 							layer.msg(data.errorMsg);
// 							if (tag == "#personalForm") {
// 								$("#personal img").attr(
// 										"src",
// 										"/image/verifyCode?loginType=personal&date="
// 												+ Date.parse(new Date()));
// 							} else {
// 								$("#company img").attr(
// 										"src",
// 										"/image/verifyCode?loginType=company&date="
// 												+ Date.parse(new Date()));
// 							}
// 						}
// 					}
// 				});
// 		   });
    	})
	</script>
</body>
</html>
