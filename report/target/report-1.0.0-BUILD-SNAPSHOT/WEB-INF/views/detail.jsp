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
  <title>XCAN-DEMO - Detail</title>
  <!-- Custom fonts for this template-->
  <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css" />"  rel="stylesheet">
  <!-- Page level plugin CSS-->
  <link href="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.css" />"  rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="<c:url value="/resources/css/sb-admin.css" />"  rel="stylesheet">
</head>
<body id="page-top">
  <nav class="navbar navbar-expand navbar-dark bg-dark static-top">
    <a class="navbar-brand mr-1" href="#"><!-- XCAN Contents Manager --><spring:message code="contents.title" /></a>
    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
      <i class="fas fa-bars"></i>
    </button>
    <!-- Navbar Search -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
    </form>
    <!-- EUN.HS 2019.03.14 ADD START -->
    <a class="navbar-brand mr-1" href="./contents?lang=jp"><img src="<c:url value="/resources/images/" /><c:out value="japan.png"/>" style="width: 27px; height: 18px;"></a>
    <a class="navbar-brand mr-1" href="./contents?lang=en"><img src="<c:url value="/resources/images/" /><c:out value="america.png"/>" style="width: 27px; height: 18px;"></a>
    <a class="navbar-brand mr-1" href="./contents?lang=ko"><img src="<c:url value="/resources/images/" /><c:out value="korea.png"/>" style="width: 27px; height: 18px;"></a>
    <!-- EUN.HS 2019.03.14 ADD END -->
    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
      <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user-circle fa-fw"></i> <c:out value="${user_id}"/>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
          <a class="dropdown-item" href="user/logout">Logout</a>
        </div>
      </li>
    </ul>
  </nav>
  <div id="wrapper">
    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="/main" />">
          <i class="fas fa-fw fa-window-restore"></i>
          <span><spring:message code="menu.main" /></span>
        </a>
      </li>
      <!-- SON.YR 2019.04.09 UPDATE START -->
      <li class="nav-item active">
        <a class="nav-link" href="<c:url value="/contents" />">
          <i class="fas fa-fw fa-th-list"></i>
          <span><spring:message code="menu.contents" /></span></a>
      </li>
      <!-- JEON.JK 2019.03.06 START -->
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="/hotel" />">
          <i class="fas fa-fw fa-th-list"></i>
          <span><spring:message code="menu.hotel" /></span></a>
      </li>
      <!-- JEON.JK 2019.03.06 END -->
      <!-- SON.YR 2019.04.09 UPDATE END -->
    </ul>
    <div id="content-wrapper">
      <div class="container-fluid">
        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="<c:url value="contents" />"><spring:message code="menu.main.back" /></a>
          </li>
        </ol>
        <!-- DataTables Example -->
        <div class="card mb-3">
          <div class="card-header" style="font-size:1.25em;">
            <i class="fas fa-table"></i>　<spring:message code="menu.detail.list" /> <i class="fas fa-table"></i>　<c:out value="${menu_no}"/>
             <div class="float-right">
	            <button type="button" class="btn btn-primary btn-sm btn-reg" data-user_id="<c:out value="${user_id}"/>"
	            data-menu_no="<c:out value="${menu_no}"/>"><i class="fa fa-plus-square fa-lg"></i> <spring:message code="menu.detail.btnReg" /></button>
             </div>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTables-example" width="100%" cellspacing="0">
                <thead>
                  <tr>
						<th style="display:none;">No.</th>
						<th style="display:none;">商品番号</th>
						<th style="text-align:center; background-color: #4c89d3; color: white;"><spring:message code="menu.detail.itemName" /></th>
						<th style="text-align:center; background-color: #4c89d3; color: white;"><spring:message code="menu.detail.itemImg" /></th>
						<th style="text-align:center; background-color: #4c89d3; color: white;"><spring:message code="menu.detail.itemPrice" /></th>
						<th style="text-align:center; width: 150px; background-color: #4c89d3; color: white; ">
                  </tr>
                </thead>
                <tbody>
				<c:forEach var="obj" items="${detail_list}" varStatus="status">
	                <tr>
	                  <td style="display:none;">${status.count}</td>
	                  <td style="display:none;"><c:out value="${obj.getProductNo()}"/></td>
	                  <td style="text-align:center;"><c:out value="${obj.getProductName()}"/></td>
	                  <td style="text-align:center;">
	                  	<img src="<c:url value="/resources/images/" /><c:out value="${obj.getProductImageLink()}"/>" style="width: 100px; height: 70px;">
	                  </td>
	                  <td style="text-align:center;"><c:out value="${obj.getProductPrice()}"/></td>
	                  <td style="text-align: center; vertical-align: middle;">
	                     <button type="button" class="btn btn-success btn-sm btn-edit"
						 	data-user_id="<c:out value="${obj.getUserId()}"/>"
							data-menu_no="<c:out value="${obj.getMenuNo()}"/>"
							data-product_no="<c:out value="${obj.getProductNo()}"/>"
							data-product_name="<c:out value="${obj.getProductName()}"/>"
							data-product_image_link="<c:out value="${obj.getProductImageLink()}"/>"
							data-product_price="<c:out value="${obj.getProductPrice()}"/>">
						<i class="fa fa-plus-square fa-lg"></i> <spring:message code="menu.detail.btnEdit" /></button>
	                     <button type="button" class="btn btn-danger btn-sm btn-del"
	                     	data-user_id="<c:out value="${obj.getUserId()}"/>"
	                     	data-menu_no="<c:out value="${obj.getMenuNo()}"/>"
               			 	data-product_no="<c:out value="${obj.getProductNo()}"/>"
               			 	data-product_name="<c:out value="${obj.getProductName()}"/>">
						<i class="fa fa-minus-circle fa-lg"></i> <spring:message code="menu.detail.btnDelete" /></button>
	                  </td>
	                </tr>
				</c:forEach>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <!-- /.container-fluid -->
      <!-- Sticky Footer -->
      <footer class="sticky-footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright © 2019 Asia Information System Co., Ltd. All Rights Reserved.</span>
          </div>
        </div>
      </footer>
    </div>
    <!-- /.content-wrapper -->
  </div>
  <!-- /#wrapper -->
	<!-- モデル名登録・編集 modal -->
<div class="modal" tabindex="-1" role="dialog" id="detailModal" aria-hidden="true" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-md" role="document">
<form:form id="uploadForm" class="form-horizontal" role="form" method="post" action="detail/process" enctype="multipart/form-data">
<input type="hidden" id="hid_user_id" name="hid_user_id" />
<input type="hidden" id="hid_menu_no" name="hid_menu_no" />
<input type="hidden" id="mode" name="mode" />
<input type="hidden" id="product_no" name="product_no" />
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="myModalLabel"><!-- 商品登録 --><spring:message code="menu.detail.reg.title" /></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
	        <div class="row">
			<div class="col-lg-6" style="padding: 0px 10px 0 10px; vertical-align:middle; display: inline-block;">
				<div class="form-group form-inline">
					<div class="col-lg-7" style="padding:0px 5px 0px 15px;">
						<label for="version" class="form-control-label" style="padding-top:5px;"><spring:message code="menu.detail.itemName" /><span style="color:red;">*</span></label>
					</div>
					<div class="col-lg-5">
						<input type="text" class="form-control input-md" id="product_name" name="product_name" maxLength="9" value=""
						  style="width:200px;" required>
					</div>
				</div>
 			<div class="form-group form-inline">
				<div class="col-lg-7" style="padding:0px 5px 0px 15px;">
					<label for="version" class="form-control-label" style="padding-top:5px;"><spring:message code="menu.detail.itemPrice" /><span style="color:red;">*</span></label>
				</div>
				<div class="col-lg-5">
					<input type="text" class="form-control input-md" id="product_price" name="product_price"
					maxLength="255" value=""  style="width:200px;" onkeyup="inputNumberFormat(this)" required>
				</div>
			</div>
			<div class="form-group form-inline">
				<div class="col-lg-7" style="padding:0px 5px 0px 0px;">
					<label for="version" class="form-control-label" style="padding-top:5px;"><spring:message code="menu.detail.file" /><span style="color:red;">*</span></label>
				</div>
				<div class="col-lg-5">
					<input type="file" id="image" name="image" value="" required>
				</div>
			</div>
		</div>
      </div>
      </div>
      <div class="modal-footer">
		<button type="submit" class="btn btn-info"><i class="fa fa-plus-square"></i> <span id="submit_btn"><!-- 登録 --><spring:message code="menu.main.registration.btnReg" /></span></button>
		<button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="fa fa-times-circle-o"></i> <!-- 閉じる --><spring:message code="menu.main.registration.btnCancel" /></button>
      </div>
    </div>
 </form:form>
  </div>
</div>
<!-- /.モデル名登録・編集 modal -->
<!-- 削除MODAL  -->
<div class="modal" tabindex="-1" role="dialog" id="delModal" aria-hidden="true" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-md" role="document">
<form:form id="delForm" class="form-horizontal" role="form" method="post" action="detail/delete">
	<input type="hidden" id="hid_user_id" name="hid_user_id" />
	<input type="hidden" id="hid_menu_no" name="hid_menu_no" />
	<input type="hidden" id="hid_product_no" name="hid_product_no" />
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="myModalLabel"><spring:message code="menu.detail.del.title" /></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
	      <div class="row">
	    				<div style="display:none;">
	        		  		<div class="form-group form-inline">
	        		  			<div class="col-lg-7" style="padding:0px 5px 0px 15px;">
	        		  				<label for="version" class="form-control-label" style="padding-top:5px;"><spring:message code="menu.contents.registration.contentsNo" /><span style="color:red;">*</span></label>
	        		  			</div>
	    						<div class="col-lg-5">
	    							<input type="text" class="form-control input-sm" id="menu_no" name="menu_no" maxLength="9" value=""  style="width:100%;" readonly>
	    						</div>
	                  		</div>
	              		</div>
	      </div>
	      <div class="row">
	    				<div style="display:none;">
	        		  		<div class="form-group form-inline">
	        		  			<div class="col-lg-7" style="padding:0px 5px 0px 15px;">
	        		  				<label for="version" class="form-control-label" style="padding-top:5px;"><spring:message code="menu.detail.itemNo" /><span style="color:red;">*</span></label>
	        		  			</div>
	    						<div class="col-lg-5">
	    							<input type="text" class="form-control input-sm" id="product_no" name="product_no" maxLength="9" value=""  style="width:100%;" readonly>
	    						</div>
	                  		</div>
	              		</div>
	      </div>
	      <div class="row">
	    				<div style="padding: 0px 10px 0 10px; vertical-align:middle;">
	        		  		<div class="form-group form-inline">
	        		  			<div class="col-lg-8" style="padding:0px 5px 0px 15px;">
	        		  				<label for="version" class="form-control-label" style="padding-top:5px;"><spring:message code="menu.detail.itemName" /><span style="color:red;">*</span></label>
	        		  			</div>
	    						<div class="col-lg-4">
	    							<input type="text" class="form-control input-sm" id="product_name" name="product_name" maxLength="10" value="" readonly>
	    						</div>
	                  		</div>
	                  		 <p class="text-center" style="margin-top:25px;"><spring:message code="menu.detail.del.comment" /></p>
	              		</div>
	      </div>
      </div>
      <div class="modal-footer">
		<button type="submit" class="btn btn-danger submit"><i class="fa fa-trash"></i> <span id="submit_btn"><spring:message code="menu.detail.btnDelete" /></span></button>
		<button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="fa fa-times-circle-o"></i> <spring:message code="menu.detail.btnCancel" /></button>
      </div>
    </div>
</form:form>
  </div>
</div>
<!-- /モデル名削除 modal -->
  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
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
  <script>
    function inputNumberFormat(obj) {
    	obj.value = comma(uncomma(obj.value));
	}
	function comma(str) {
	    str = String(str);
	    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
	}
	function uncomma(str) {
	    str = String(str);
	    return str.replace(/[^\d]+/g, '');
	}
</script>
<!-- JEON.JK 2019.03.15 JS用メッセージ設定　ADD START -->
 <script type="text/javascript">
  var abc      ="<spring:message code="contents.title"/>";
  var regModalLabel      ="<spring:message code="common.script.btnReg.myModalLabel"/>";
  var decimal      ="<spring:message code="common.script.decimal"/>";
  var thousands      ="<spring:message code="common.script.thousands"/>";
  var sProcessing      ="<spring:message code="common.script.sProcessing"/>";
  var sLengthMenu      ="<spring:message code="common.script.sLengthMenu"/>";
  var sZeroRecords      ="<spring:message code="common.script.sZeroRecords"/>";
  var sInfo      ="<spring:message code="common.script.sInfo"/>";
  var sInfoEmpty      ="<spring:message code="common.script.sInfoEmpty"/>";
  var sInfoFiltered      ="<spring:message code="common.script.sInfoFiltered"/>";
  var sInfoPostFix      ="<spring:message code="common.script.sInfoPostFix"/>";
  var sSearch      ="<spring:message code="common.script.sSearch"/>";
  var sUrl      ="<spring:message code="common.script.sUrl"/>";
  var oPaginate      ="<spring:message code="common.script.oPaginate"/>";
  var sFirst      ="<spring:message code="common.script.sFirst"/>";
  var sPrevious      ="<spring:message code="common.script.sPrevious"/>";
  var sNext      ="<spring:message code="common.script.sNext"/>";
  var sLast      ="<spring:message code="common.script.sLast"/>";
  var regModalLabel      ="<spring:message code="common.script.btnReg.myModalLabel"/>";
  var regSubmit_btn      ="<spring:message code="common.script.btnReg.submit_btn"/>";
  var editModalLabel1      ="<spring:message code="common.script.btnEdit.myModalLabel1"/>";
  var editModalLabel2      ="<spring:message code="common.script.btnEdit.myModalLabel2"/>";
  var editSubmit_btn      ="<spring:message code="common.script.btnEdit.submit_btn"/>";
</script>
<!-- JEON.JK 2019.03.15 JS用メッセージ設定　ADD END -->
<script>
$(document).ready(function() {
    $('#dataTables-example').DataTable({
        responsive: true,
        length: 10,
        lengthChange: false,
        searching: true,
  	    language: {
  	    	  "decimal": decimal,
    		  "thousands": thousands,
      		  "sProcessing": sProcessing,
      		  "sLengthMenu": sLengthMenu,
      		  "sZeroRecords": sZeroRecords,
      		  "sInfo": sInfo,
      		  "sInfoEmpty": sInfoEmpty,
      		  "sInfoFiltered": sInfoFiltered,
      		  "sInfoPostFix": sInfoPostFix,
      		  "sSearch": sSearch,
      		  "sUrl": sUrl,
      		  "oPaginate": {
	      		  "sFirst": sFirst,
	      		  "sPrevious": sPrevious,
	      		  "sNext": sNext,
	      		  "sLast": sLast
      		  }
  		  },
  	      columnDefs : [
  	      	{ "orderable": false, "targets": [4]}  // カラム単位でソートの有効無効を切り替えます。
  	    ]
    });
	// 「登録」ボタン動作
	$('.btn-reg').on('click', function() {
		// MODALのUI変更
		$('#detailModal').find('#myModalLabel').text(regModalLabel);
		$('#detailModal').find('#submit_btn').text(regSubmit_btn);
		// MODALの要素変更
		$('#detailModal').find('#mode').val("insert");
		$('#detailModal').find('#product_name').val("");
		$('#detailModal').find('#product_no').val("");
		/* $('#detailModal').find('#image').attr('required', ''); */
		$('#detailModal').find('#product_price').val("");
		$('#detailModal').find('#hid_user_id').val($(this).data('user_id'));
		$('#detailModal').find('#hid_menu_no').val($(this).data('menu_no'));
		$('#detailModal').find('#product_image_link').val($(this).data('product_image_link'));
		$('#detailModal').modal('show');
	});
	// 「編集」ボタン動作
	$('.btn-edit').on('click', function() {
		 $(this).removeData();
		// MODALのUI変更
		// TEST
		$('#detailModal').find('#myModalLabel').text(editModalLabel1);
		$('#detailModal').find('#submit_btn').text(editSubmit_btn);
		// MODALの要素変更
		$('#detailModal').find('#mode').val("update");
		$('#detailModal').find('#hid_user_id').val($(this).data('user_id'));
		$('#detailModal').find('#hid_menu_no').val($(this).data('menu_no'));
		$('#detailModal').find('#product_no').val($(this).data('product_no'));
		$('#detailModal').find('#product_no').prop('readonly', true);
		$('#detailModal').find('#product_name').val($(this).data('product_name'));
		$('#detailModal').find('#product_image_link').val($(this).data('product_image_link'));
		$('#detailModal').find('#product_price').val($(this).data('product_price'));
/* 		$('#detailModal').find('#image').removeAttr('required'); */
		//モーダル画面表示
		$('#detailModal').modal('show');
	});
	// 「削除」ボタン動作
	$('.btn-del').on('click', function() {
		$('#delModal').find('#hid_user_id').val($(this).data('user_id'));
		$('#delModal').find('#hid_menu_no').val($(this).data('menu_no'));
		$('#delModal').find('#menu_no').val($(this).data('menu_no'));
		$('#delModal').find('#hid_product_no').val($(this).data('product_no'))
		$('#delModal').find('#product_no').val($(this).data('product_no'));
		$('#delModal').find('#product_name').val($(this).data('product_name'));
		$('#delModal').modal('show');
	});
});
</script>
</body>
</html>