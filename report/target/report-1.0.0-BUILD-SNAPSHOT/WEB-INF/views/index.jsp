<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>XCAN-DEMO-Login</title>
  <link rel="shortcut icon" type="image⁄x-icon" href="<c:url value="/resources/images/" /><c:out value="ais_favicon_1.png"/>">
  <!-- Custom fonts for this template-->
  <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css" />"  rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="<c:url value="/resources/css/sb-admin.css" />"  rel="stylesheet">
</head>
<body class="bg-dark">
  <div class="container" style="padding-top: 200px;">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">XCAN Contents Manager</div>
      <div class="card-body">
          <form:form id="loginForm" class="form-horizontal" role="form" method="post" action="login">
			<div class="input-group mb-3">
				<div class="input-group-append">
					<span class="input-group-text"><i class="fas fa-user"></i></span>
				</div>
				<input type="text" name="inputID" class="form-control input_user" value="" placeholder="userid">
			</div>
			<div class="input-group mb-2">
				<div class="input-group-append">
					<span class="input-group-text"><i class="fas fa-key"></i></span>
				</div>
				<input type="password" name="inputPassword" class="form-control input_pass" value="" placeholder="password">
			</div>
	  		<button type="submit" class="btn btn-primary btn-block"><i class="fa fa-arrow-circle-right" style="padding-right: 10px;"></i>  LOGIN</button>
			<c:if test="${msg == 'failure'}" >
				<div style="color: red; text-align: center; padding-top: 10px;"> IDとパスワードが一致しません。</div>
			</c:if>
        </form:form>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="<c:url value="/resources/vendor/jquery/jquery.min.js" />"></script>
  <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
  <!-- Core plugin JavaScript-->
  <script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js" />"></script>
</body>
</html>