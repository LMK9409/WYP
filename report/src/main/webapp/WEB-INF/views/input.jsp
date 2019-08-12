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

    <title>ユーザー登録</title>
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
    <!-- signup form  -->
    <!-- ============================================================== -->
    <form class="splash-container">
        <div class="card">
            <div class="card-header">
                <h3 class="mb-1">ユーザー登録</h3>
                <p>以下の情報を入力してください。</p>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text" name="userid" required="" placeholder="ユーザーID" autocomplete="off">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" type="email" name="email" required="" placeholder="メールアドレス" autocomplete="off">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" id="pass1" type="password" required="" placeholder="パスワード">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" required="" placeholder="パスワード確認">
                </div>
                <div class="form-group pt-2">
                    <button class="btn btn-block btn-primary" type="submit">登録</button>
                </div>
            </div>
            <div class="card-footer bg-white">
                <p><a href="/report" class="text-secondary">ログイン画面へ</a></p>
            </div>
        </div>
    </form>
</body>


</html>