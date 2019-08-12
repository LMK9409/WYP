<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>XCAN-DEMO - Hotel</title>
<link rel="shortcut icon" type="image⁄x-icon" href="<c:url value="/resources/images/" /><c:out value="ais_favicon_1.png"/>">
  <!-- Custom fonts for this template-->
  <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css" />"  rel="stylesheet">
  <!-- Page level plugin CSS-->
  <link href="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.css" />"  rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="<c:url value="/resources/css/sb-admin.css" />"  rel="stylesheet">
  <link href="<c:url value="/resources/css/hotel.css" />"  rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script type="text/javascript" src="http://jsgetip.appspot.com"></script>
</head>
<body id="page-top">
	<nav class="navbar navbar-expand navbar-dark bg-dark static-top">
	<a class="navbar-brand mr-1" href="#"> <!-- XCAN Contents Manager -->
		<spring:message code="contents.title" />
	</a>
	<button class="btn btn-link btn-sm text-white order-1 order-sm-0"
		id="sidebarToggle" href="#">
		<i class="fas fa-bars"></i>
	</button>
	<!-- Navbar Search -->
	<form
		class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
	</form>
	<!-- EUN.HS 2019.03.14 MOD START -->
	<a class="navbar-brand mr-1" href="./hotel?lang=jp"><img src="<c:url value="/resources/images/" /><c:out value="japan.png"/>" style="width: 27px; height: 18px;"></a>
	<a class="navbar-brand mr-1" href="./hotel?lang=en"><img src="<c:url value="/resources/images/" /><c:out value="america.png"/>"	style="width: 27px; height: 18px;"></a>
	<a class="navbar-brand mr-1" href="./hotel?lang=ko"><img src="<c:url value="/resources/images/" /><c:out value="korea.png"/>" style="width: 27px; height: 18px;"></a>
	<!-- EUN.HS 2019.03.14 MOD END -->
	<!-- Navbar -->
	<ul class="navbar-nav ml-auto ml-md-0">
		<li class="nav-item dropdown no-arrow"><a
			class="nav-link dropdown-toggle" href="#" id="userDropdown"
			role="button" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false"> <i class="fas fa-user-circle fa-fw"></i> <c:out
					value="${user_id}" />
		</a>
			<div class="dropdown-menu dropdown-menu-right"
				aria-labelledby="userDropdown">
				<a class="dropdown-item" href="user/logout">Logout</a>
			</div></li>
	</ul>
	</nav>
	<div id="wrapper">
		<!-- Sidebar -->
		<ul class="sidebar navbar-nav">
			<li class="nav-item"><a class="nav-link"
				href="<c:url value="/main" />"> <i
					class="fas fa-fw fa-window-restore"></i> <span> <!-- 機器管理 -->
						<spring:message code="menu.main" />
				</span>
			</a></li>
			<!-- SON.YR 2019.04.09 UPDATE START -->
			<li class="nav-item"><a class="nav-link"
				href="<c:url value="/contents" />"> <i
					class="fas fa-fw fa-th-list"></i> <span> <!-- コンテンツ管理 -->
				 <spring:message code="menu.contents" /></span></a></li>
			<!-- JEON.JK 2019.03.06 START -->
			<li class="nav-item active"><a class="nav-link"
				href="<c:url value="/hotel" />"> <i class="fas fa-fw fa-th-list"></i>
					<span> <!-- ホテル客室管理サイト -->
				 <spring:message code="menu.hotel" /></span></a></li>
			<!-- SON.YR 2019.04.09 UPDATE END -->
			<!-- JEON.JK 2019.03.06 END -->
		</ul>
		<div id="content-wrapper">
		     <div class="container-fluid">
        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#"><spring:message code="menu.hotel.subTitle" /></a>
          </li>
        </ol>
        <!-- DataTables Example -->
        <div class="card mb-3">
          <div class="card-header" style="font-size:1.25em;">
            <i class="fas fa-table"></i>　<spring:message code="menu.hotel.subTitle" />
          </div>
          <div class="card-body">
				<figure class="snip1273">
				  <img src="<c:url value="/resources/images/" /><c:out value="hotel_main.jpg"/>" alt="sample86">
				  <figcaption>
				    <p><spring:message code="menu.hotel.hotelName" /></p>
				    <p><spring:message code="menu.hotel.contents1" /></p>
				  </figcaption>
				  <a href="#"></a>
				</figure>
				<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
				<script  src="./resources/js/hotel_main.js"></script>
				<section>
				  <article>
				  <div class="box">
				    <div class="feed"><h2><spring:message code="menu.hotel.contents2" /></h2>
				    <p style= "text-align: center;"><spring:message code="menu.hotel.contents3" /></p>
				    </div>
				  </div>
				  <div class="box"><figure><img src="<c:url value="/resources/images/" /><c:out value="hotel_intro.jpg"/>" style="width: 630px; height: 350px;"></figure></div>
				</article>
				<article>
				  <div class="box">
				    <div class="feed"><h2><spring:message code="menu.hotel.contents4" /></h2>
				    <p style= "text-align: center;"><spring:message code="menu.hotel.contents5" /></p>
				    </div>
				  </div>
				  <div class="box"><figure><img src="<c:url value="/resources/images/" /><c:out value="hotel_con.jpg"/>" style="width: 630px; height: 350px;"></figure></div>
				</article>
				<article>
				  <div class="box">
				    <div class="feed"><h2><spring:message code="menu.hotel.contents6" /></h2>
				     <p style= "text-align: center;"><spring:message code="menu.hotel.contents7" /></p>
				    </div>
				  </div>
				   <div class="box"><figure><img src="<c:url value="/resources/images/" /><c:out value="hotel_room.jpg"/>" style="width: 630px; height: 350px;"></figure></div>
				</article>
				<article>
				  <div class="box">
				    <div class="feed"><h2><spring:message code="menu.hotel.contents8" /></h2>
				     <p style= "text-align: center;"><spring:message code="menu.hotel.contents9" /></p>
				    </div>
				  </div>
				   <div class="box"><figure><img src="<c:url value="/resources/images/" /><c:out value="hotel_party.jpg"/>" style="width: 630px; height: 350px;"></figure></div>
				</article>
			</div>
				</section>
<footer id="footer">
  <h2><spring:message code="menu.hotel.contents10" /></h2>
  <p><spring:message code="menu.hotel.contents11" /></p>
  <div class="container">
<div class="footer-02">Copyright © 2019 Asia Information System Co., Ltd. All Rights Reserved.</div>
  </div>
</footer>
		<!-- /.content-wrapper -->
	</div>
	</div>
	</div>
	</div>
	<!-- /#wrapper -->
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	<!-- Bootstrap core JavaScript-->
	<script src="<c:url value="/resources/vendor/jquery/jquery.min.js" />"></script>
	<script
		src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
	<!-- Core plugin JavaScript-->
	<script
		src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js" />"></script>
	<!-- Page level plugin JavaScript-->
	<script
		src="<c:url value="/resources/vendor/datatables/jquery.dataTables.js" />"></script>
	<script
		src="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.js" />"></script>
	<!-- Custom scripts for all pages-->
	<script src="<c:url value="/resources/js/sb-admin.min.js" />"></script>
</body>
</html>