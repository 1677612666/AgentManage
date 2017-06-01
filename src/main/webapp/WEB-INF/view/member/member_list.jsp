<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="ThemeBucket" />
<link rel="shortcut icon" href="#" type="image/png" />
<title>我的会员</title>

<!--responsive table-->
<link href="${BASE_PATH}/css/table-responsive.css" rel="stylesheet" />

<link href="${BASE_PATH}/css/style.css" rel="stylesheet" />
<link href="${BASE_PATH}/css/style-responsive.css" rel="stylesheet" />

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
			<h3>我的会员</h3>
		</div>
		<!-- page heading end-->

		<!--body wrapper start-->
		<div class="wrapper">
			<div class="row">
				<div class="col-sm-12">
					<section class="panel"> <header class="panel-heading">
					会员信息 &nbsp;&nbsp;&nbsp; <a onclick="openSearch()" ><i class="fa fa-search"></i></a> </header>
					<div class="panel-body">
						<section id="unseen">
						<table
							class="table table-bordered table-hover table-striped table-condensed">
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
							<tbody id="dataContent">
							</tbody>
						</table>
							<span id="totalCount"></span>
							<div id="pagin" style="float: right;"></div>
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

	<!-- Modal -->
	<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog"
		tabindex="-1" id="myModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">查看会员</h4>
				</div>
				<form action="memberEdit" method="get">
					<div class="modal-body">
						<div class="form-group">
							<label for="exampleInputEmail1">头像 : <span id="WeChatUrl"></span></label> 
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">会员ID : <span id="gameID"></span></label> 
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">身份证  : <span id="IdentityID"></span></label>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">昵称 : <span id="NickName"></span></label> 
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">真实姓名  : <span id="Name"></span></label>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">剩余房卡数量 : <span id="Score"></span></label>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">总房卡数量 : <span id="Score">500</span></label>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">消耗房卡数量 : <span id="Score">200</span></label>
						</div>
					</div>
				</form>
				<div class="modal-footer">
					<button data-dismiss="modal" class="btn btn-default" type="button">确定</button>
				</div>
			</div>
		</div>
	</div>
	<!-- modal --> <!-- main content end--> 
	</section>
	<!-- Placed js at the end of the document so the pages load faster -->
	<script src="${BASE_PATH}/js/jquery-1.10.2.min.js"></script>
	<script src="${BASE_PATH}/js/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="${BASE_PATH}/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="${BASE_PATH}/js/bootstrap.min.js"></script>
	<script src="${BASE_PATH}/js/modernizr.min.js"></script>
	<script src="${BASE_PATH}/js/jquery.nicescroll.js"></script>
	<script src="${BASE_PATH}/js/layer/layer.js"></script>
	<script src="${BASE_PATH}/js/laypage/laypage.js"></script>


	<!--common scripts for all pages-->
	<script src="${BASE_PATH}/js/scripts.js"></script>
	<script type="text/javascript">
	
		//详情页面
		function memberLook(data) {
			//model表单赋值
			$('#myModal').on('show.bs.modal', function () {
				$("#gameID").html(data.GameID);
				$("#IdentityID").html(data.IdentityID);
				$("#NickName").html(data.NickName);
				$("#Name").html(data.Name);
				$("#Score").html(data.Score);
				$("#Score").html(data.Score);
			})
			
			//弹出model
			$('#myModal').modal('show');
		}
		
		// 搜索框
		function openSearch(){
			layer.prompt({
				  title: '搜索会员(ID/昵称)'
				}, function(value, index, elem){
					location.href="member?searchContent="+value;
				 	layer.close(index);
				});
		}
		
		// 会员冻结
		function memberEdit(id) {
			layer.confirm('你确定冻结此会员?', {
				  btn: ['确定', '在想想'], //可以无限个按钮
				  title: "提示",
				}, function(index, layero){
					location.href="member/memberEdit?id="+id;
				}, function(index){
				  //按钮【按钮二】的回调
				});
		}
        
		//后台用户分页
		function page(curr) {
			layer.load(2);
			$.getJSON('${BASE_PATH}/member/getMemberList',
						{
							pageIndex : curr || 1
						},
						function(res) {
							layer.closeAll('loading');
							//数据处理
							$("#totalCount").text(
									"共  " + res.totalRow + " 条记录");
							$("#dataContent").empty();
							for (var i = 0; i < res.list.length; i++) {
								//添加列表数据
								var data = res.list[i];
								var str = "<tr><td>"
										+ data.GameID
										+ "</td><td>"
										+ data.IdentityID
										+ "</td><td class='numeric'>"
										+ data.NickName
										+ "</td><td class='numeric'>"
										+ data.Name
										+ "</td><td class='numeric'>"
										+ data.Score
										+ "</td><td class='numeric'>"
										+ data.Score
										+ "</td><td class='numeric'>"
										+ data.sex
										+ "</td><td class='numeric'>"
										+ data.LastLoginTime
										+ "</td><td class='numeric'><a onclick='memberLook("+JSON.stringify(data)+")'><span class='label label-info label-mini'>查看</span></a>"
										+ "<a onclick='memberEdit("+data.GameID+")' ><span class='label label-danger label-mini' style='margin-left:5px;'>冻结</span></a></td></tr>";
								$("#dataContent").append(str);
							}
							//显示分页
							laypage({
								cont : 'pagin', //容器。值支持id名、原生dom对象，jquery对象。【如该容器为】：<div id="page1"></div>
								pages : res.totalPage, //通过后台拿到的总页数
								curr : curr || 1, //当前页
								skip : true, //是否开启跳页
								skin : 'molv', //皮肤，可自定义颜色#ffffff
								groups : 3,//连续显示分页数
								jump : function(obj, first) { //触发分页后的回调
									if (!first) { //点击跳页触发函数自身，并传递当前页：obj.curr
										page(obj.curr);
									}
								}
							});
						});
		};
		//运行
		page();
	</script>
</body>
</html>
