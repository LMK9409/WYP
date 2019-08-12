<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false" %>
<!doctype html>
<html lang="ja">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/vendor/fonts/circular-std/style.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/vendor/fonts/fontawesome/css/fontawesome-all.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/vendor/fonts/flag-icon-css/flag-icon.min.css" />">
    <title>メイン</title>
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand" href="index.html">実績管理</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                </div>
            </nav>
        </div>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
        <div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider"></li>
                            <li class="nav-item ">
                                <a class="nav-link active" href="/report/work/input">
                                <i class="fa fa-fw fas fa-edit"></i>実績入力
                                </a>
							</li>
                            <li class="nav-item ">
                                <a class="nav-link active" href="/report/work/list">
                                <i class="fa fa-fw fas fa-list-ul"></i>実績表示
                                </a>
							</li>
                            <li class="nav-item ">
                                <a class="nav-link active" href="/report/user">
                                <i class="fa fa-fw fa-user-circle"></i>個人情報設定
                                </a>
							</li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content ">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header" style="text-align: right;">
                                <h3 class="pageheader-title" id="date_txt"></h3>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end pageheader  -->
                    <!-- ============================================================== -->
                    <div class="ecommerce-widget">
                        <div class="row">
                            <div class="col-xl-5 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body p-0">
                                        <ul class="social-sales list-group list-group-flush">
                                            <li class="list-group-item social-sales-content"><span class="social-sales-icon-circle facebook-bgcolor mr-2">
	                                            <a href="/report/work/input" class="text-secondary">
	                                            	<i class="fa fa-edit fa-lg"></i></span><span class="social-sales-name">実績入力</span>
	                                            </a>
                                            </li>
                                            <li class="list-group-item social-sales-content">
                                            <span class="social-sales-icon-circle twitter-bgcolor mr-2">
	                                            <a href="/report/work/list" class="text-secondary">
	                                            <i class="fa fa-list-alt fa-lg"></i></span><span class="social-sales-name">実績表示</span>
	                                            </a>
                                            </li>
                                            <li class="list-group-item social-sales-content"><span class="social-sales-icon-circle instagram-bgcolor mr-2">
                                            <a href="/report/user" class="text-secondary">
                                            <i class="fa fa-address-card fa-lg"></i></span><span class="social-sales-name">個人情報設定</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <div class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                             Copyright © 2019 AIS-INFO. All rights reserved.
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <!-- jquery 3.3.1 -->
    <script src="<c:url value="/resources/vendor/jquery/jquery-3.3.1.min.js" />"></script>
    <!-- bootstap bundle js -->
    <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.js" />"></script>
    <!-- slimscroll js -->
    <script src="<c:url value="/resources/vendor/slimscroll/jquery.slimscroll.js" />"></script>
    <!-- main js -->
    <script src="<c:url value="/resources/js/main-js.js" />"></script>

<script>
$(document).ready(function() {
	// 現在の日付及び曜日取得
	var current_date = new Date();
	var year = current_date.getFullYear();
	var month = current_date.getMonth()+1;
	var month_txt = ('0' + month).slice(-2);
	var date = current_date.getDate();
	var date_lavel = current_date.getDay();
	var wd = ['日', '月', '火', '水', '木', '金', '土'];
	$('#date_txt').text(year + '年' + month_txt + '月' + date+ '日' + '(' + wd[date_lavel] + ')');


});

 </script>
</body>

</html>