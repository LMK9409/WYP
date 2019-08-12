<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<title>XCAN-DEMO::<c:out value='${device_id}' /></title>
<link rel="shortcut icon" type="image⁄x-icon" href="<c:url value="/resources/images/" /><c:out value="ais_favicon_1.png"/>">
<!-- Custom styles for this template-->
<link href="<c:url value="/resources/css/menu/style.css" />" rel="stylesheet" />
<!-- fibt -->
<link href='http://fonts.googleapis.com/css?family=Raleway:300,500|Arvo:700' rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="container">
		<div class="codrops-top"></div>
		<header> </header>
		<div id="rm-container" class="rm-container">
			<div class="rm-wrapper">
				<div class="rm-middle">
					<div class="rm-inner">
						<div class="rm-content">
							<h4>
							<c:out value="${menu_explan}" />
							</h4>
							<table width="100%" cellspacing="0">
								<tbody>
									<c:forEach var="obj" items="${detail_list}" varStatus="status">
										<tr width=50%>
											<td>
												<img src="<c:url value="/resources/images/" /><c:out value="${obj.getProductImageLink()}"/>" style="width: 100px; height: 70px;">
											</td>
											<td>
												<c:out value="${obj.getProductName()}" />
											</td>
											<td>
												<c:out value="${obj.getProductPrice()}" />
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- /rm-content -->
						<div class="rm-overlay"></div>
					</div>
				</div>
			</div>
			<!-- /rm-inner -->
		</div>
	</div>
	<!-- Bootstrap core JavaScript-->
	<script src="<c:url value="/resources/vendor/jquery/jquery.min.js" />"></script>
	<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
	<!-- Core plugin JavaScript-->
	<script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js" />"></script>
	<!-- Page level plugin JavaScript-->
	<script src="<c:url value="/resources/vendor/datatables/jquery.dataTables.js" />"></script>
	<script src="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.js" />"></script>
	<!-- Custom scripts for all pages-->
	<script src="<c:url value="/resources/js/sb-admin.min.js" />"></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/menu/menu.js" />"></script>
	<script type="text/javascript">
		$(function() {
			Menu.init();
		});
	</script>
</body>
</html>