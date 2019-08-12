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
    <link href="<c:url value="/resources/vendor/fonts/circular-std/style.css" />" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/vendor/fonts/fontawesome/css/fontawesome-all.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/vendor/fonts/flag-icon-css/flag-icon.min.css" />">
    <title>実績入力</title>
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
	                <a class="navbar-brand" href="index.html">実績入力</a>
	                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	                    <span class="navbar-toggler-icon"></span>
	                </button>
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
                                    <div class="card-body">

                                    <form action="#" id="basicform" data-parsley-validate="">
                                        <div class="form-group">
                                            <label for="inputText3" class="col-form-label">【開始時間】</label>
                                            <input id="startDate" type="text" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="inputUserName">【終了時間】</label>
                                            <input id="endDate" type="text" name="endDate" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="inputUserName">【活動種別】</label>
                                            <select class="form-control" id="input-select">
                                                <option value="01">総員配置</option>
                                                <option value="02">当直</option>
                                                <option value="03">保守・整備作業</option>
                                                <option value="04">荷役作業</option>
                                                <option value="05">調理（食料調達を含む）</option>
                                                <option value="06">その他の業務（事務作業他）</option>
                                                <option value="07">就寝</option>
                                                <option value="08">食事</option>
                                                <option value="09">プライベート（船内）</option>
                                                <option value="10">プライベート（上陸）</option>
                                                <option value="11">陸上休暇</option>
                                                <option value="12">その他（備考欄に記載）</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputUserName">【備考】</label>
                                            <textarea id="bigo" name="bigo" required="" class="form-control"></textarea>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6 pl-0">
                                                <p class="text-right">
                                                    <button type="submit" class="btn btn-space btn-primary">登録</button>
                                                    <button class="btn btn-space btn-secondary">キャンセル</button>
                                                </p>
                                            </div>
                                        </div>
                                    </form>

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