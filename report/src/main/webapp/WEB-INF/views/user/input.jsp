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
    <title>個人情報設定</title>
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
                <a class="navbar-brand" href="index.html">個人情報設定</a>
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
                    <a class="d-xl-none d-lg-none" href="#">個人情報設定</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider"></li>
                            <li class="nav-item ">
                                <a class="nav-link active" href="/report/work/register">
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
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">


                                    <form action="#" id="basicform" data-parsley-validate="">
                                        <div class="form-group">
                                            <label for="inputText3" class="col-form-label">【ユーザーID】 </label>
                                            <input id="userId" type="text" class="form-control" value="XXXXXX">
                                        </div>
                                        <div class="form-group">
                                            <label for="inputUserName">【齢年】</label>
                                            <select class="form-control" id="input-select">
                                                <option value="01">10代</option>
                                                <option value="02">20代</option>
                                                <option value="03">30代</option>
                                                <option value="04">40代</option>
                                                <option value="05">50代</option>
                                                <option value="06">60代</option>
                                                <option value="07">70代以上</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputUserName">【性別】</label>
                                            <div>
	                                            <label class="custom-control custom-radio custom-control-inline">
	                                                <input type="radio" name="radio-inline" checked="true" class="custom-control-input"><span class="custom-control-label">男性</span>
	                                            </label>
	                                            <label class="custom-control custom-radio custom-control-inline">
	                                                <input type="radio" name="radio-inline" class="custom-control-input"><span class="custom-control-label">女性</span>
	                                            </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputText3" class="col-form-label">【船舶名】(任意) </label>
                                            <select class="form-control" id="input-select">
                                                <option value="01">船舶1</option>
                                                <option value="02">船舶2</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputText3" class="col-form-label">【トン数】</label>
                                            <select class="form-control" id="input-select">
                                                <option value="01">200トン未満</option>
                                                <option value="02">200～499トン</option>
                                                <option value="03">500～749トン</option>
                                                <option value="04">750～999トン</option>
                                                <option value="05">1000～1599トン</option>
                                                <option value="06">1600～4999トン</option>
                                                <option value="07">5000トン以上</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputText3" class="col-form-label">【船種】</label>
                                            <select class="form-control" id="input-select">
                                                <option value="01">内航旅客船</option>
                                                <option value="02">内航その他貨物船</option>
                                                <option value="03">内航タンカー</option>
                                                <option value="04">内航セメント専用船</option>
                                                <option value="05">内航コンテナ船</option>
                                                <option value="06">航RORO船内</option>
                                                <option value="07">内航その他</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputText3" class="col-form-label">【職種】</label>
                                            <select class="form-control" id="input-select">
                                                <option value="01">船長</option>
                                                <option value="02">一航士</option>
                                                <option value="03">その他の航海士</option>
                                                <option value="04">甲板部員</option>
                                                <option value="05">その他の機関士</option>
                                                <option value="06">機関部員</option>
                                                <option value="07">事務部（司厨）</option>
                                                <option value="08">事務部（サービス）</option>
                                            </select>
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