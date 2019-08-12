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
  <title>XCAN-DEMO - MAIN</title>
  <link rel="shortcut icon" type="image⁄x-icon" href="<c:url value="/resources/images/" /><c:out value="ais_favicon_1.png"/>">
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
    <!-- EUN.HS 2019.03.14 MOD START -->
    <a class="navbar-brand mr-1" href="./main?lang=jp"><img src="<c:url value="/resources/images/" /><c:out value="japan.png"/>" style="width: 27px; height: 18px;"></a>
    <a class="navbar-brand mr-1" href="./main?lang=en"><img src="<c:url value="/resources/images/" /><c:out value="america.png"/>" style="width: 27px; height: 18px;"></a>
    <a class="navbar-brand mr-1" href="./main?lang=ko"><img src="<c:url value="/resources/images/" /><c:out value="korea.png"/>" style="width: 27px; height: 18px;"></a>
    <!-- EUN.HS 2019.03.14 MOD END -->
    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
      <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user-circle fa-fw"></i> ${user_id}
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
      <li class="nav-item active">
        <a class="nav-link" href="<c:url value="/main" />">
          <i class="fas fa-fw fa-window-restore"></i>
          <span><!-- 機器管理 --><spring:message code="menu.main" /></span>
        </a>
      </li>
      <!-- SON.YR 2019.04.09 UPDATE START -->
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="/contents" />">
          <i class="fas fa-fw fa-th-list"></i>
          <span><!-- メニュー管理 --><spring:message code="menu.contents" /></span></a>
      </li>
      <!-- JEON.JK 2019.03.06 START -->
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="/hotel" />">
          <i class="fas fa-fw fa-th-list"></i>
          <span><!-- ホテル客室管理サイト --><spring:message code="menu.hotel" /></span></a>
      </li>
      <!-- JEON.JK 2019.03.06 END -->
      <!-- SON.YR 2019.04.09 UPDATE END -->
    </ul>
    <div id="content-wrapper">
      <div class="container-fluid">
        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#"><!-- 機器管理 --><spring:message code="menu.main.title" /></a>
          </li>
        </ol>
        <!-- DataTables Example -->
        <div class="card mb-3">
          <div class="card-header" style="font-size:1.25em;">
            <i class="fas fa-table"></i>　<!-- 機器一覧 --><spring:message code="menu.main.list" />
             <div class="float-right">
	            <button type="button" class="btn btn-primary btn-sm btn-reg" data-user_id="<c:out value="${user_id}"/>"><i class="fa fa-plus-square fa-lg"></i> <!-- 登録 --><spring:message code="menu.main.btnRegistration" /></button>
             </div>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTables-example" width="100%" cellspacing="0" style="word-break:break-all">
                <thead>
                  <tr>
                  		<!-- EUN.HS 2019.03.14 DEL START -->
<!-- 						<th style="text-align:center; width: 50px; background-color: #4c89d3; color: white;">No.</th> -->
						<!-- EUN.HS 2019.03.14 DEL END -->
						<th style="text-align:center; background-color: #4c89d3; color: white; width:9%;"><!-- 管理番号 --><spring:message code="menu.main.listNo" /></th>
						<th style="text-align:center; background-color: #4c89d3; color: white; width:9%;"><!-- 機器詳細--><spring:message code="menu.main.detail" /></th>
						<!-- JEON.JK 2019.03.22 UPDATE START -->
						<th style="display:none;text-align:center; background-color: #4c89d3; color: white;"><!-- 画面番号--><spring:message code="menu.main.displayNo" /></th>
						<!-- JEON.JK 2019.03.22 UPDATE END -->
						<!-- EUN.HS 2019.03.14 ADD START -->
						<!-- JEON.JK 2019.03.22 UPDATE START -->
						<th style="text-align:center; background-color: #4c89d3; color: white; width:9%;"><spring:message code="menu.main.menuType" /></th>
						<!-- JEON.JK 2019.03.22 UPDATE END -->
						<!-- EUN.HS 2019.03.14 ADD END -->
						<th style="text-align:center; background-color: #4c89d3; color: white; width:9%"><!-- 登録者--><spring:message code="menu.main.updateId" /></th>
						<th style="text-align:center; background-color: #4c89d3; color: white; width:9%"><!-- 登録日--><spring:message code="menu.main.updateDate" /></th>
						<th style="text-align:center; background-color: #4c89d3; color: white; width:26%"><!-- URL--><spring:message code="menu.main.url" /></th>
						<th style="text-align:center; background-color: #4c89d3; color: white; width:11%"><!-- URL--><spring:message code="menu.main.reUrl" /></th>
						<th style="text-align:center; background-color: #4c89d3; color: white; width:13%">
                  </tr>
                </thead>
                <tbody>
				<c:forEach var="obj" items="${device_list}" varStatus="status">
	                <tr>
	                  <!-- EUN.HS 2019.03.14 DEL START -->
					  <%-- <td style="text-align:center;">${status.count}</td> --%>
					  <!-- EUN.HS 2019.03.14 DEL END -->
	                  <td style="text-align:center;"><c:out value="${obj.getMachineNo()}"/></td>
	                  <td style="text-align:center;"><c:out value="${obj.getMachineDesc()}"/></td>
	                  <td style="display:none;text-align:center;"><c:out value="${obj.getMenuNo()}"/></td>
	                  <!-- EUN.HS 2019.03.14 ADD START -->
	                  <td style="text-align: center;">
		                  <c:if test="${obj.getMenuType() == 0 }">
		                  		<span style="color: red;"><spring:message code="menu.main.registration.menuType.type1" /></span>
		                  </c:if>
		                  <c:if test="${obj.getMenuType() == 1 }">
		                        <span style="color: green;"><spring:message code="menu.main.registration.menuType.type2" /></span>
		                  </c:if>
		                  <c:if test="${obj.getMenuType() == 2 }">
		                        <span style="color: blue;"><spring:message code="menu.main.url" /></span>
		                  </c:if>
		              </td>
	                  <td style="text-align: center;"><c:out value="${obj.getCreateId()}"/></td>
	                  <td style="text-align: center;"><c:out value="${obj.getCreateDateStr()}"/></td>
	                  <td>
	                  	<a class="external" href="<c:url value="${obj.getLinkUrl()}" />"><c:out value="${obj.getLinkUrl()}"/></a>
	                  </td>
	                  <td>
	                  	<c:if test="${obj.getMenuType() == 2 }">
	                  	<a class="external" href="<c:url value="${obj.getRedirectUrl()}" />"><c:out value="${obj.getRedirectUrl()}"/></a>
	                  	</c:if>
	                  </td>
	                  <td style="text-align: center;">
	                     <button type="button" class="btn btn-success btn-sm btn-edit"
						 	data-user_id="<c:out value="${obj.getUserId()}"/>"
							data-machine_no="<c:out value="${obj.getMachineNo()}"/>"
							data-menu_no="<c:out value="${obj.getMenuNo()}"/>"
							data-redirect_url="<c:out value="${obj.getRedirectUrl()}"/>"
							data-menu_type="<c:out value="${obj.getMenuType()}"/>"
							data-machine_desc="<c:out value="${obj.getMachineDesc()}"/>">
						<i class="fa fa-plus-square fa-lg"></i> <!--  編集 --><spring:message code="menu.main.btnEdit" /></button>
	                     <button type="button" class="btn btn-danger btn-sm btn-del"
	                     	data-machine_no="<c:out value="${obj.getMachineNo()}"/>"
	                     	data-user_id="<c:out value="${obj.getUserId()}"/>">
						<i class="fa fa-minus-circle fa-lg"></i> <!--  削除 --><spring:message code="menu.main.btnDelete" /></button>
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
<div class="modal" id="machineModal" tabindex="-1" role="dialog" aria-labelledby="machineModal" aria-hidden="true" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-lg" role="document">
<form:form id="deviceForm" class="form-horizontal" role="form" method="post" action="device/process" modelAttribute='infoDevice'>
<input type="hidden" id="hid_user_id" name="hid_user_id" />
<input type="hidden" id="mode" name="mode" value="">
<input type="hidden" id="org_menu_no" name="org_menu_no" value="">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="myModalLabel"><!-- XCAN機器登録 --><spring:message code="menu.main.registration.title"/></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
	      <div class="row">
			<div class="col-lg-6" style="padding: 0px 10px 0 10px; vertical-align:middle; display: inline-block;">
				<div class="form-group form-inline">
					<div class="col-lg-4" style="padding:0px 5px 0px 15px;">
						<label for="machine_no" class="form-control-label" style="padding-top:5px;"><!-- 機器番号--><spring:message code="menu.main.registration.machineNo" /><span style="color:red;">*</span></label>
					</div>
					<div class="col-lg-8">
						<input type="text" class="form-control input-md" id="machine_no" name="machine_no" maxLength="9" value=""  style="width:100%;" required>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="col-lg-4" style="padding:0px 5px 0px 15px;">
						<label for="machine_desc" class="form-control-label" style="padding-top:5px;"><!-- 機器詳細 --><spring:message code="menu.main.registration.machineDesc" /><span style="color:red;">*</span></label>
					</div>
					<div class="col-lg-8">
						<input type="text" class="form-control input-sm" id="machine_desc" name="machine_desc" value=""  style="width:100%;" required>
					</div>
				</div>
				<div class="form-group form-inline">
					<div class="col-lg-4" style="padding:0px 5px 0px 15px;">
						<label for="create_id" class="form-control-label" style="padding-top:5px;"><!-- 登録者 --><spring:message code="menu.main.registration.createId" /><span style="color:red;">*</span></label>
					</div>
					<div class="col-lg-8">
						<input type="text" class="form-control input-sm" id="create_id" name="create_id" value="Admin"  style="width:100%;" readonly>
					</div>
				</div>
				<!-- EUN.HS 2019.03.14 ADD START -->
				<!-- JEON.JK 2019.03.22 UPDATE START -->
				<div class="form-group form-inline" >
					<div class="col-lg-4" style="padding:0px 5px 0px 15px;">
						<label for="menu_type" class="form-control-label" style="padding-top:5px;"><spring:message code="menu.main.registration.menuType" /><span style="color:red;">*</span></label>
					</div>
					<div class="col-lg-8">
						<div class="input-group type-select" style="width:100%;">
							<select class="form-control" id="menu_type" name="menu_type" required>
								<option value="0"> <spring:message code="menu.contents.list" /></option>
								<option value="1"> <spring:message code="menu.hotel.subTitle" /></option>
								<option value="2"> <spring:message code="menu.main.registration.redirectUrl" /></option>
							</select>
						</div>
					</div>
				</div>
				<!-- JEON.JK 2019.03.22 UPDATE END -->
				<!-- EUN.HS 2019.03.14 ADD END -->
				<div class=menu_select style="display:none">
					<div class="form-group form-inline">
						<div class="col-lg-4" style="padding:0px 5px 0px 15px;">
							<label for="menu_no" class="form-control-label" style="padding-top:5px;"><!-- メニュー番号 --><spring:message code="menu.main.registration.menuNo" /><span style="color:red;">*</span></label>
						</div>
						<div class="col-lg-8">
							<div class="input-group menu-select" style="width:100%;">
								<select class="form-control" id="menu_no" name="menu_no">
									<c:forEach var="menu" items="${menu_list}">
										<option value="<c:out value="${menu.getMenuNo()}"/>"><c:out value="${menu.getMenuExplan()}"/></option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>
				</div>
				<div class=hotel_select style="display:none">
					<input type="hidden" id="menu_no" name="menu_no" value="1">
				</div>
				<!-- EUN.HS 2019.03.14 ADD START -->
				<div class=redirect_select style="display:none">
					<div class="form-group form-inline">
						<div class="col-lg-4" style="padding:0px 5px 0px 15px;">
							<label for="redirect_url" class="form-control-label" style="padding-top:5px;"><spring:message code="menu.main.registration.redirectUrl" /><span style="color:red;">*</span></label>
						</div>
						<div class="col-lg-8">
							<input type="text" class="form-control input-sm" id="redirect_url" name="redirect_url" value="http://"  style="width:100%;" >
						</div>
					</div>
				</div>
				<!-- EUN.HS 2019.03.14 ADD END -->
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
  <div class="modal-dialog modal-sm" role="document">
<form:form id="delForm" class="form-horizontal" role="form" method="post" action="device/delete" modelAttribute='delDevice'>
<input type="hidden" id="hid_machine_no" name="hid_machine_no" />
<input type="hidden" id="hid_user_id" name="hid_user_id" />
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="myModalLabel"><!-- XCAN機器削除 --><spring:message code="menu.main.delete.title" /></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
	      <div class="row">
	    				<div style="padding: 0px 10px 0 10px; vertical-align:middle;">
	        		  		<div class="form-group form-inline">
	        		  			<div class="col-lg-4" style="padding:0px 5px 0px 15px;">
	        		  				<label for="version" class="form-control-label" style="padding-top:5px;"><!-- 機器番号 --><spring:message code="menu.main.delete.machineNo" /><span style="color:red;">*</span></label>
	        		  			</div>
	    						<div class="col-lg-8">
	    							<input type="text" class="form-control input-sm" id="machine_no" name="machine_no" maxLength="9" value=""  style="width:100%;" readonly>
	    						</div>
	                  		</div>
	                  		 <p class="text-center" style="margin-top:25px;"><!-- この機器を削除しますか？--><spring:message code="menu.main.delete.comment" /></p>
	              		</div>
	      </div>
      </div>
      <div class="modal-footer">
		<button type="submit" class="btn btn-danger submit"><i class="fa fa-trash"></i> <span id="submit_btn"><!-- 削除 --><spring:message code="menu.main.delete.btnDel" /></span></button>
		<button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="fa fa-times-circle-o"></i> <!-- 閉じる --><spring:message code="menu.main.delete.btnCancel" /></button>
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
  <!-- XCAN機器登録 -->
  <script type="text/javascript">
     var abc="<spring:message code="menu.main.registration.title"/>";
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
  var regModalLabel      ="<spring:message code="common.script.btnDeviceReg.myModalLabel"/>";
  var regSubmit_btn      ="<spring:message code="common.script.btnReg.submit_btn"/>";
  var editModalLabel      ="<spring:message code="common.script.btnDeviceEdit.myModalLabel"/>";
  var editSubmit_btn      ="<spring:message code="common.script.btnEdit.submit_btn"/>";
  var sc_message ="<spring:message code="common.script.sc_message"/>";
</script>
<!-- JEON.JK 2019.03.15 JS用メッセージ設定　ADD END -->
<script>
$(document).ready(function() {
	$('.modal').on('hidden.bs.modal', function (e) {
	    console.log('modal close');
	    $('.image').hide();
	    $('.menu_select').hide();
	    $('.redirect_select').hide();
	  $(this).find('form')[0].reset()
	});
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
      		  "oPaginate": oPaginate,
      		  "sFirst": sFirst,
      		  "sPrevious": sPrevious,
      		  "sNext": sNext,
      		  "sLast": sLast
  		  },
  	      columnDefs : [
  	      	{ "orderable": false, "targets": [6]}  // カラム単位でソートの有効無効を切り替えます。
  	    ]
    });
	// 「登録」ボタン動作
	$('.btn-reg').on('click', function() {
		// MODALのUI変更
		$('#machineModal').find('#myModalLabel').text(regModalLabel);
		$('#machineModal').find('#submit_btn').text(regSubmit_btn);
		// MODALの要素変更
		$('#machineModal').find('#mode').val("insert");
		$('#machineModal').find('#machine_no').val("");
		$('#machineModal').find('#machine_no').prop('readonly', false);
		$('#machineModal').find('#menu_no').val("");
		$('#machineModal').find('#machine_desc').val("");
		$('#machineModal').find('#menu_type').val("");
		$('#machineModal').find('#hid_user_id').val($(this).data('user_id'));
		$('#machineModal').find('#create_id').val($(this).data('user_id'));
		$('#machineModal').find('#redirect_url').val($(this).data('redirect_url'));
		$('#machineModal').modal('show');
	});

	// 「編集」ボタン動作
	$('.btn-edit').on('click', function() {
		$(this).removeData();
		// MODALのUI変更
		$('#machineModal').find('#myModalLabel').text(editModalLabel);
		$('#machineModal').find('#submit_btn').text(editSubmit_btn);
		// MODALの要素変更
		$('#machineModal').find('#mode').val("update");
		$('#machineModal').find('#hid_user_id').val($(this).data('user_id'));
		$('#machineModal').find('#hid_machine_id').val($(this).data('user_id'));
		$('#machineModal').find('#machine_no').val($(this).data('machine_no'));
		$('#machineModal').find('#machine_no').prop('readonly', true);
		$('#machineModal').find('#menu_no').val($(this).data('menu_no')).prop('selected',true);
		$('#machineModal').find('#org_menu_no').val($(this).data('menu_no'));
		$('#machineModal').find('#machine_desc').val($(this).data('machine_desc'));
		$('#machineModal').find('#menu_type').val($(this).data('menu_type'));
		$('#machineModal').find('#create_id').val($(this).data('user_id'));
		$('#machineModal').find('#redirect_url').val($(this).data('redirect_url'));

		var mType = $(this).data('menu_type');
		var mNo = $(this).data('menu_no');
		if(mType == '0'){
			$('.menu_select').show();
			$('.hotel_select').hide();
			$('.redirect_select').hide();
		}else if(mType == '1'){
			$('.menu_select').hide();
			$('.hotel_select').show();
			$('.redirect_select').hide();
		}else if(mType == '2'){
			$('.menu_select').hide();
			$('.hotel_select').hide();
			$('.redirect_select').show();
		}else {
			$('.menu_select').hide();
			$('.hotel_select').hide();
			$('.redirect_select').hide();
		}
		//モーダル画面表示
		$('#machineModal').modal('show');
	});
	// 「登録」及び「編集」モーダルの項目表示変更
	$('.type-select').change(function() {
		var text = $('option:selected').val();
		if(text == '0'){
			$('.menu_select').show();
			$('.hotel_select').hide();
			$('.redirect_select').hide();

		var menu = $('#menu_no').val();

		$('#menu_no').attr('required', '');

		}else if(text == '1'){
			$('.menu_select').hide();
			$('.hotel_select').show();
			$('.redirect_select').hide();
			$('.image').hide();
		}else if(text == '2'){
			$('.menu_select').hide();
			$('.hotel_select').hide();
			$('.redirect_select').show();
			$('.image').hide();

		var url = $('#redirect_url').val();

		$('#redirect_url').attr('required', '');

		}else {
			$('.menu_select').hide();
			$('.hotel_select').hide();
			$('.redirect_select').hide();
			$('.image').hide();
		}
	});
	// 「削除」ボタン動作
	$('.btn-del').on('click', function() {
		$('#delModal').find('#hid_user_id').val($(this).data('user_id'));
		$('#delModal').find('#hid_machine_no').val($(this).data('machine_no'));
		$('#delModal').find('#machine_no').val($(this).data('machine_no'));
		$('#delModal').modal('show');
	});
});
</script>
<!-- 特殊文字処理 -->
<script type="text/javascript">
$("#machine_no").bind("keyup", function(){
	 re = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
	 var temp=$("#machine_no").val();

	 if(re.test(temp)){
		alert(sc_message);
	 	$("#machine_no").val(temp.replace(re,""));
	 }
});
</script>
</body>
</html>