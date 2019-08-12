<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">
<head>
<!-- 接続した端末の国家を確認。 -->
  <script type="text/javascript">
  window.onload = function onLoad() {

       var la = navigator.language;
          if(la=="ko-KR" || la=="ko"){
          	location.href="./hotelmenu_kr";
     	} else if(la=="ja" || la=="ja-JP"){
    	  	location.href="./hotelmenu_jp";
      	} else if(la=="zh-CN" || la=="zh-TW"){
    	  	location.href="./hotelmenu_ch";
      	} else {
    	  	location.href="./hotelmenu_us";
      	}
   }
  </script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>XCAN-DEMO - Hotel</title>
</head>
<body>
</body>
</html>