<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
  <meta name="keywords" content="admin, dashboard, bootstrap, template, flat, modern, theme, responsive, fluid, retina, backend, html5, css, css3"/>
  <meta name="description" content=""/>
  <meta name="author" content="ThemeBucket"/>
  <link rel="shortcut icon" href="#" type="image/png"/>

  <title>AdminX</title>

  <!--icheck-->
  <link href="${BASE_PATH}/js/iCheck/skins/minimal/minimal.css" rel="stylesheet"/>
  <link href="${BASE_PATH}/js/iCheck/skins/square/square.css" rel="stylesheet"/>
  <link href="${BASE_PATH}/js/iCheck/skins/square/red.css" rel="stylesheet"/>
  <link href="${BASE_PATH}/js/iCheck/skins/square/blue.css" rel="stylesheet"/>

  <!--dashboard calendar-->
  <link href="${BASE_PATH}/css/clndr.css" rel="stylesheet"/>

  <!--Morris Chart CSS -->
  <link rel="stylesheet" href="${BASE_PATH}/js/morris-chart/morris.css"/>

  <!--common-->
  <link href="${BASE_PATH}/css/style.css" rel="stylesheet"/>
  <link href="${BASE_PATH}/css/style-responsive.css" rel="stylesheet"/>




  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="${BASE_PATH}/js/html5shiv.js"></script>
  <script src="${BASE_PATH}/js/respond.min.js"></script>
  <![endif]-->
</head>

<body class="sticky-header">

<section>
    <!-- left side start-->
    <div class="left-side sticky-left-side">

        <!--logo and iconic logo start-->
        <div class="logo">
            <a href="index.html"><img src="${BASE_PATH}/images/logo.png" alt=""></a>
        </div>

        <div class="logo-icon text-center">
            <a href="index.html"><img src="${BASE_PATH}/images/logo_icon.png" alt=""></a>
        </div>
        <!--logo and iconic logo end-->

        <div class="left-side-inner">

            <!-- visible to small devices only -->
            <div class="visible-xs hidden-sm hidden-md hidden-lg">
                <div class="media logged-user">
                    <img alt="" src="${BASE_PATH}/images/photos/user-avatar.png" class="media-object">
                    <div class="media-body">
                        <h4><a href="#">橙子</a></h4>
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
                <li class="active"><a href="index.html"><i class="fa fa-home"></i> <span>仪表盘</span></a></li>
                <li class="menu-list"><a href=""><i class="fa fa-laptop"></i> <span>布局</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="blank_page.html">空白页</a></li>
                        <li><a href="boxed_view.html">盒装页</a></li>
                        <li><a href="leftmenu_collapsed_view.html">侧边栏折叠</a></li>
                        <li><a href="horizontal_menu.html">水平菜单</a></li>

                    </ul>
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-book"></i> <span>UI元素</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="general.html">普通</a></li>
                        <li><a href="buttons.html">按钮</a></li>
                        <li><a href="tabs-accordions.html">标签 & 手风琴</a></li>
                        <li><a href="typography.html">排版</a></li>
                        <li><a href="slider.html">滑块</a></li>
                        <li><a href="panels.html">面板</a></li>
                    </ul>
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-cogs"></i> <span>组件</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="grids.html">网格</a></li>
                        <li><a href="gallery.html">媒体库</a></li>
                        <li><a href="calendar.html">日历</a></li>
                        <li><a href="tree_view.html">树形视图</a></li>
                        <li><a href="nestable.html">拖拽树</a></li>

                    </ul>
                </li>

                <li><a href="fontawesome.html"><i class="fa fa-bullhorn"></i> <span>字体图标</span></a></li>

                <li class="menu-list"><a href=""><i class="fa fa-envelope"></i> <span>邮箱</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="mail.html">收件箱</a></li>
                        <li><a href="mail_compose.html">写邮件</a></li>
                        <li><a href="mail_view.html">查看邮件</a></li>
                    </ul>
                </li>

                <li class="menu-list"><a href=""><i class="fa fa-tasks"></i> <span>表单</span></a>
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
                    </ul>
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-bar-chart-o"></i> <span>统计图表</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="flot_chart.html"> Flot Charts</a></li>
                        <li><a href="morris.html"> Morris Charts</a></li>
                        <li><a href="chartjs.html"> Chartjs</a></li>
                        <li><a href="c3chart.html"> C3 Charts</a></li>
                    </ul>
                </li>
                <li class="menu-list"><a href="#"><i class="fa fa-th-list"></i> <span>数据表格</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="basic_table.html">基础表格</a></li>
                        <li><a href="dynamic_table.html">高级表格</a></li>
                        <li><a href="responsive_table.html">响应式表格</a></li>
                        <li><a href="editable_table.html">编辑表格</a></li>
                    </ul>
                </li>

                <li class="menu-list"><a href="#"><i class="fa fa-map-marker"></i> <span>地图</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="google_map.html">谷歌地图</a></li>
                        <li><a href="vector_map.html">Vector地图</a></li>
                    </ul>
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-file-text"></i> <span>补充页面</span></a>
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
                    </ul>
                </li>
                <li><a href="login.html"><i class="fa fa-sign-in"></i> <span>登录页</span></a></li>

            </ul>
            <!--sidebar nav end-->

        </div>
    </div>
    <!-- left side end-->
    
    <!-- main content start-->
    <div class="main-content" >

        <!-- header section start-->
        <div class="header-section">

            <!--toggle button start-->
            <a class="toggle-btn"><i class="fa fa-bars"></i></a>
            <!--toggle button end-->

            <!--search start-->
            <form class="searchform" action="index.html" method="post">
                <input type="text" class="form-control" name="keyword" placeholder="Search here..." />
            </form>
            <!--search end-->

            <!--notification menu start -->
            <div class="menu-right">
                <ul class="notification-menu">
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                            <i class="fa fa-tasks"></i>
                            <span class="badge">8</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-head pull-right">
                            <h5 class="title">You have 8 pending task</h5>
                            <ul class="dropdown-list user-list">
                                <li class="new">
                                    <a href="#">
                                        <div class="task-info">
                                            <div>Database update</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-warning">
                                                <span class="">40%</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="new">
                                    <a href="#">
                                        <div class="task-info">
                                            <div>Dashboard done</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div style="width: 90%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="90" role="progressbar" class="progress-bar progress-bar-success">
                                                <span class="">90%</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div>Web Development</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div style="width: 66%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="66" role="progressbar" class="progress-bar progress-bar-info">
                                                <span class="">66% </span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div>Mobile App</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div style="width: 33%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="33" role="progressbar" class="progress-bar progress-bar-danger">
                                                <span class="">33% </span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div>Issues fixed</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div style="width: 80%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="80" role="progressbar" class="progress-bar">
                                                <span class="">80% </span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="new"><a href="">See All Pending Task</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="badge">5</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-head pull-right">
                            <h5 class="title">You have 5 Mails </h5>
                            <ul class="dropdown-list normal-list">
                                <li class="new">
                                    <a href="">
                                        <span class="thumb"><img src="${BASE_PATH}/images/photos/user1.png" alt="" /></span>
                                        <span class="desc">
                                          <span class="name">John Doe <span class="badge badge-success">new</span></span>
                                          <span class="msg">Lorem ipsum dolor sit amet...</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span class="thumb"><img src="${BASE_PATH}/images/photos/user2.png" alt="" /></span>
                                        <span class="desc">
                                          <span class="name">Jonathan Smith</span>
                                          <span class="msg">Lorem ipsum dolor sit amet...</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span class="thumb"><img src="${BASE_PATH}/images/photos/user3.png" alt="" /></span>
                                        <span class="desc">
                                          <span class="name">Jane Doe</span>
                                          <span class="msg">Lorem ipsum dolor sit amet...</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span class="thumb"><img src="${BASE_PATH}/images/photos/user4.png" alt="" /></span>
                                        <span class="desc">
                                          <span class="name">Mark Henry</span>
                                          <span class="msg">Lorem ipsum dolor sit amet...</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span class="thumb"><img src="${BASE_PATH}/images/photos/user5.png" alt="" /></span>
                                        <span class="desc">
                                          <span class="name">Jim Doe</span>
                                          <span class="msg">Lorem ipsum dolor sit amet...</span>
                                        </span>
                                    </a>
                                </li>
                                <li class="new"><a href="">Read All Mails</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="badge">4</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-head pull-right">
                            <h5 class="title">Notifications</h5>
                            <ul class="dropdown-list normal-list">
                                <li class="new">
                                    <a href="">
                                        <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                                        <span class="name">Server #1 overloaded.  </span>
                                        <em class="small">34 mins</em>
                                    </a>
                                </li>
                                <li class="new">
                                    <a href="">
                                        <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                                        <span class="name">Server #3 overloaded.  </span>
                                        <em class="small">1 hrs</em>
                                    </a>
                                </li>
                                <li class="new">
                                    <a href="">
                                        <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                                        <span class="name">Server #5 overloaded.  </span>
                                        <em class="small">4 hrs</em>
                                    </a>
                                </li>
                                <li class="new">
                                    <a href="">
                                        <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                                        <span class="name">Server #31 overloaded.  </span>
                                        <em class="small">4 hrs</em>
                                    </a>
                                </li>
                                <li class="new"><a href="">See All Notifications</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <img src="${BASE_PATH}/images/photos/user-avatar.png" alt="" />
                            John Doe
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                            <li><a href="#"><i class="fa fa-user"></i>  Profile</a></li>
                            <li><a href="#"><i class="fa fa-cog"></i>  Settings</a></li>
                            <li><a href="#"><i class="fa fa-sign-out"></i> Log Out</a></li>
                        </ul>
                    </li>

                </ul>
            </div>
            <!--notification menu end -->

        </div>
        <!-- header section end-->

        <!-- page heading start-->
        <div class="page-heading">
            <h3>
                仪表盘
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="#">仪表盘</a>
                </li>
                <li class="active">我的仪表盘</li>
            </ul>
            <div class="state-info">
                <section class="panel">
                    <div class="panel-body">
                        <div class="summary">
                            <span>yearly expense</span>
                            <h3 class="red-txt">$ 45,600</h3>
                        </div>
                        <div id="income" class="chart-bar"></div>
                    </div>
                </section>
                <section class="panel">
                    <div class="panel-body">
                        <div class="summary">
                            <span>yearly  income</span>
                            <h3 class="green-txt">$ 45,600</h3>
                        </div>
                        <div id="expense" class="chart-bar"></div>
                    </div>
                </section>
            </div>
        </div>
        <!-- page heading end-->

        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="col-md-6">
                    <!--statistics start-->
                    <div class="row state-overview">
                        <div class="col-md-6 col-xs-12 col-sm-6">
                            <div class="panel purple">
                                <div class="symbol">
                                    <i class="fa fa-gavel"></i>
                                </div>
                                <div class="state-value">
                                    <div class="value">230</div>
                                    <div class="title">New Order</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12 col-sm-6">
                            <div class="panel red">
                                <div class="symbol">
                                    <i class="fa fa-tags"></i>
                                </div>
                                <div class="state-value">
                                    <div class="value">3490</div>
                                    <div class="title">Copy Sold</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row state-overview">
                        <div class="col-md-6 col-xs-12 col-sm-6">
                            <div class="panel blue">
                                <div class="symbol">
                                    <i class="fa fa-money"></i>
                                </div>
                                <div class="state-value">
                                    <div class="value">22014</div>
                                    <div class="title"> Total Revenue</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12 col-sm-6">
                            <div class="panel green">
                                <div class="symbol">
                                    <i class="fa fa-eye"></i>
                                </div>
                                <div class="state-value">
                                    <div class="value">390</div>
                                    <div class="title"> Unique Visitors</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--statistics end-->
                </div>
                <div class="col-md-6">
                    <!--more statistics box start-->
                    <div class="panel deep-purple-box">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-7 col-sm-7 col-xs-7">
                                    <div id="graph-donut" class="revenue-graph"></div>

                                </div>
                                <div class="col-md-5 col-sm-5 col-xs-5">
                                    <ul class="bar-legend">
                                        <li><span class="blue"></span> Open rate</li>
                                        <li><span class="green"></span> Click rate</li>
                                        <li><span class="purple"></span> Share rate</li>
                                        <li><span class="red"></span> Unsubscribed rate</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--more statistics box end-->
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="panel">
                        <div class="panel-body">
                            <div class="row revenue-states">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h4>Monthly revenue report</h4>
                                    <div class="icheck">
                                        <div class="square-red single-row">
                                            <div class="checkbox ">
                                                <input type="checkbox" checked>
                                                <label>Online</label>
                                            </div>
                                        </div>
                                        <div class="square-blue single-row">
                                            <div class="checkbox ">
                                                <input type="checkbox">
                                                <label>Offline </label>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <ul class="revenue-nav">
                                        <li><a href="#">weekly</a></li>
                                        <li><a href="#">monthly</a></li>
                                        <li class="active"><a href="#">yearly</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="clearfix">
                                        <div id="main-chart-legend" class="pull-right">
                                        </div>
                                    </div>

                                    <div id="main-chart">
                                        <div id="main-chart-container" class="main-chart">
                                        </div>
                                    </div>
                                    <ul class="revenue-short-info">
                                        <li>
                                            <h1 class="red">15%</h1>
                                            <p>Server Load</p>
                                        </li>
                                        <li>
                                            <h1 class="purple">30%</h1>
                                            <p>Disk Space</p>
                                        </li>
                                        <li>
                                            <h1 class="green">84%</h1>
                                            <p>Transferred</p>
                                        </li>
                                        <li>
                                            <h1 class="blue">28%</h1>
                                            <p>Temperature</p>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel">
                        <header class="panel-heading">
                            goal progress
                            <span class="tools pull-right">
                                <a href="javascript:;" class="fa fa-chevron-down"></a>
                                <a href="javascript:;" class="fa fa-times"></a>
                             </span>
                        </header>
                        <div class="panel-body">
                            <ul class="goal-progress">
                                <li>
                                    <div class="prog-avatar">
                                        <img src="${BASE_PATH}/images/photos/user1.png" alt=""/>
                                    </div>
                                    <div class="details">
                                        <div class="title">
                                            <a href="#">John Doe</a> - Project Lead
                                        </div>
                                        <div class="progress progress-xs">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                                                <span class="">70%</span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="prog-avatar">
                                        <img src="${BASE_PATH}/images/photos/user2.png" alt=""/>
                                    </div>
                                    <div class="details">
                                        <div class="title">
                                            <a href="#">Cameron Doe</a> - Sales
                                        </div>
                                        <div class="progress progress-xs">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 91%">
                                                <span class="">91%</span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="prog-avatar">
                                        <img src="${BASE_PATH}/images/photos/user3.png" alt=""/>
                                    </div>
                                    <div class="details">
                                        <div class="title">
                                            <a href="#">Hoffman Doe</a> - Support
                                        </div>
                                        <div class="progress progress-xs">
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                <span class="">40%</span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="prog-avatar">
                                        <img src="${BASE_PATH}/images/photos/user4.png" alt=""/>
                                    </div>
                                    <div class="details">
                                        <div class="title">
                                            <a href="#">Jane Doe</a> - Marketing
                                        </div>
                                        <div class="progress progress-xs">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                                <span class="">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="prog-avatar">
                                        <img src="${BASE_PATH}/images/photos/user5.png" alt=""/>
                                    </div>
                                    <div class="details">
                                        <div class="title">
                                            <a href="#">Hoffman Doe</a> - Support
                                        </div>
                                        <div class="progress progress-xs">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
                                                <span class="">45%</span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <div class="text-center"><a href="#">View all Goals</a></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <div class="panel">
                        <div class="panel-body extra-pad">
                            <h4 class="pros-title">prospective <span>leads</span></h4>
                            <div class="row">
                                <div class="col-sm-4 col-xs-4">
                                    <div id="p-lead-1"></div>
                                    <p class="p-chart-title">Laptop</p>
                                </div>
                                <div class="col-sm-4 col-xs-4">
                                    <div id="p-lead-2"></div>
                                    <p class="p-chart-title">iPhone</p>
                                </div>
                                <div class="col-sm-4 col-xs-4">
                                    <div id="p-lead-3"></div>
                                    <p class="p-chart-title">iPad</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel">
                        <div class="panel-body extra-pad">
                            <div class="col-sm-6 col-xs-6">
                                <div class="v-title">Visits</div>
                                <div class="v-value">10,090</div>
                                <div id="visit-1"></div>
                                <div class="v-info">Pages/Visit</div>
                            </div>
                            <div class="col-sm-6 col-xs-6">
                                <div class="v-title">Unique Visitors</div>
                                <div class="v-value">8,173</div>
                                <div id="visit-2"></div>
                                <div class="v-info">Avg. Visit Duration</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">

                    <div class="panel green-box">
                        <div class="panel-body extra-pad">
                            <div class="row">
                                <div class="col-sm-6 col-xs-6">
                                    <div class="knob">
                                        <span class="chart" data-percent="79">
                                            <span class="percent">79% <span class="sm">New Visit</span></span>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-xs-6">
                                    <div class="knob">
                                        <span class="chart" data-percent="56">
                                            <span class="percent">56% <span class="sm">Bounce rate</span></span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <div class="panel">
                        <div class="panel-body">
                            <div class="calendar-block ">
                                <div class="cal1">

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel">
                        <header class="panel-heading">
                            Todo List
                            <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                             </span>
                        </header>
                        <div class="panel-body">
                            <ul class="to-do-list" id="sortable-todo">
                                <li class="clearfix">
                                    <span class="drag-marker">
                                    <i></i>
                                    </span>
                                    <div class="todo-check pull-left">
                                        <input type="checkbox" value="None" id="todo-check"/>
                                        <label for="todo-check"></label>
                                    </div>
                                    <p class="todo-title">
                                        Dashboard Design & Wiget placement
                                    </p>
                                    <div class="todo-actionlist pull-right clearfix">

                                        <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="drag-marker">
                                    <i></i>
                                    </span>
                                    <div class="todo-check pull-left">
                                        <input type="checkbox" value="None" id="todo-check1"/>
                                        <label for="todo-check1"></label>
                                    </div>
                                    <p class="todo-title">
                                        Wireframe prepare for new design
                                    </p>
                                    <div class="todo-actionlist pull-right clearfix">

                                        <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="drag-marker">
                                    <i></i>
                                    </span>
                                    <div class="todo-check pull-left">
                                        <input type="checkbox" value="None" id="todo-check2"/>
                                        <label for="todo-check2"></label>
                                    </div>
                                    <p class="todo-title">
                                        UI perfection testing for Mega Section
                                    </p>
                                    <div class="todo-actionlist pull-right clearfix">

                                        <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="drag-marker">
                                    <i></i>
                                    </span>
                                    <div class="todo-check pull-left">
                                        <input type="checkbox" value="None" id="todo-check3"/>
                                        <label for="todo-check3"></label>
                                    </div>
                                    <p class="todo-title">
                                        Wiget & Design placement
                                    </p>
                                    <div class="todo-actionlist pull-right clearfix">

                                        <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="drag-marker">
                                    <i></i>
                                    </span>
                                    <div class="todo-check pull-left">
                                        <input type="checkbox" value="None" id="todo-check4"/>
                                        <label for="todo-check4"></label>
                                    </div>
                                    <p class="todo-title">
                                        Development & Wiget placement
                                    </p>
                                    <div class="todo-actionlist pull-right clearfix">

                                        <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                                    </div>
                                </li>

                            </ul>
                            <div class="row">
                                <div class="col-md-12">
                                    <form role="form" class="form-inline">
                                        <div class="form-group todo-entry">
                                            <input type="text" placeholder="Enter your ToDo List" class="form-control" style="width: 100%">
                                        </div>
                                        <button class="btn btn-primary pull-right" type="submit">+</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel blue-box twt-info">
                        <div class="panel-body">
                            <h3>19 Februay 2014</h3>

                            <p>AdminEx is new model of admin
                            dashboard <a href="#">http://t.co/3laCVziTw4</a>
                            4 days ago by John Doe</p>
                        </div>
                    </div>
                    <div class="panel">
                        <div class="panel-body">
                            <div class="media usr-info">
                                <a href="#" class="pull-left">
                                    <img class="thumb" src="${BASE_PATH}/images/photos/user2.png" alt=""/>
                                </a>
                                <div class="media-body">
                                    <h4 class="media-heading">Mila Watson</h4>
                                    <span>Senior UI Designer</span>
                                    <p>I use to design websites and applications for the web.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer custom-trq-footer">
                            <ul class="user-states">
                                <li>
                                    <i class="fa fa-heart"></i> 127
                                </li>
                                <li>
                                    <i class="fa fa-eye"></i> 853
                                </li>
                                <li>
                                    <i class="fa fa-user"></i> 311
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--body wrapper end-->

        <!--footer section start-->
        <footer>
            2014 &copy; AdminEx by ThemeBucket
        </footer>
        <!--footer section end-->
    </div>
    <!-- main content end-->
</section>

<!-- Placed js at the end of the document so the pages load faster -->
<script src="${BASE_PATH}/js/jquery-1.10.2.min.js"></script>
<script src="${BASE_PATH}/js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="${BASE_PATH}/js/jquery-migrate-1.2.1.min.js"></script>
<script src="${BASE_PATH}/js/bootstrap.min.js"></script>
<script src="${BASE_PATH}/js/modernizr.min.js"></script>
<script src="${BASE_PATH}/js/jquery.nicescroll.js"></script>

<!--easy pie chart-->
<script src="${BASE_PATH}/js/easypiechart/jquery.easypiechart.js"></script>
<script src="${BASE_PATH}/js/easypiechart/easypiechart-init.js"></script>

<!--Sparkline Chart-->
<script src="${BASE_PATH}/js/sparkline/jquery.sparkline.js"></script>
<script src="${BASE_PATH}/js/sparkline/sparkline-init.js"></script>

<!--icheck -->
<script src="${BASE_PATH}/js/iCheck/jquery.icheck.js"></script>
<script src="${BASE_PATH}/js/icheck-init.js"></script>

<!-- jQuery Flot Chart-->
<script src="${BASE_PATH}/js/flot-chart/jquery.flot.js"></script>
<script src="${BASE_PATH}/js/flot-chart/jquery.flot.tooltip.js"></script>
<script src="${BASE_PATH}/js/flot-chart/jquery.flot.resize.js"></script>


<!--Morris Chart-->
<script src="${BASE_PATH}/js/morris-chart/morris.js"></script>
<script src="${BASE_PATH}/js/morris-chart/raphael-min.js"></script>

<!--Calendar-->
<script src="${BASE_PATH}/js/calendar/clndr.js"></script>
<script src="${BASE_PATH}/js/calendar/evnt.calendar.init.js"></script>
<script src="${BASE_PATH}/js/calendar/moment-2.2.1.js"></script>
<script src="${BASE_PATH}/js/underscore-min.js"></script>

<!--common scripts for all pages-->
<script src="${BASE_PATH}/js/scripts.js"></script>

<!--Dashboard Charts-->
<script src="${BASE_PATH}/js/dashboard-chart-init.js"></script>
</body>
</html>
