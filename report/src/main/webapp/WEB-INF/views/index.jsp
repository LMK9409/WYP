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

    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/vendor/fonts/circular-std/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/vendor/fonts/fontawesome/css/fontawesome-all.css" />" rel="stylesheet">
    <style>
    html,
    body {
        height: 100%;
    }

    body {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        padding-top: 40px;
        padding-bottom: 40px;
    }
    </style>
</head>

<body>
    <!-- ============================================================== -->
    <!-- login page  -->
    <!-- ============================================================== -->
    <div class="splash-container">
        <div class="card ">
            <div class="card-header text-center">
            	<span class="splash-description">実績管理システム</span>
            </div>
            <div class="card-body">
                <form id="loginFrm" role="form" method="post" action="main">
                    <div class="form-group">
                        <input class="form-control form-control-lg" id="userid" type="text" placeholder="ユーザーID" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <input class="form-control form-control-lg" id="password" type="password" placeholder="パスワード">
                    </div>
                    <button type="submit" class="btn btn-primary btn-lg btn-block">ログイン</button>
                </form>
            </div>
            <div class="card-footer bg-white p-0">
                <div class="card-footer-item card-footer-item-bordered" style="width: 50%;float: left;">
                    <a href="/report/input" class="footer-link">ID登録</a></div>
                <div class="card-footer-item card-footer-item-bordered" style="width: 50%;float: right;">
                    <a href="#" class="footer-link">パスワード送信</a>
                </div>
            </div>
        </div>
    </div>

    <!-- ============================================================== -->
    <!-- end login page  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="<c:url value="/resources/vendor/jquery/jquery-3.3.1.min.js" />" ></script>
    <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.js" />"></script>
</body>

</html>