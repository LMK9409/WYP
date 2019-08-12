<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/css/hotelmenu.css" />"  rel="stylesheet">
<meta charset="UTF-8">
<title>XCAN-DEMO - Hotel</title>
<link rel="shortcut icon" type="image⁄x-icon" href="<c:url value="/resources/images/" /><c:out value="ais_favicon_1.png"/>">
</head>
<body>
<figure class="snip1273">
  <img src="<c:url value="/resources/images/" /><c:out value="hotel_main.jpg"/>" alt="sample86">
  <figcaption>
    <p>○○酒店</p>
    <p>歡迎光臨!</p>
  </figcaption>
  <a href="#"></a>
</figure>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script  src="./resources/js/hotel_main.js"></script>
<section>
  <article>
  <div class="box">
    <div class="feed"><h2>酒店介紹</h2>
    <p style= "text-align: center;">我們酒店是國內最好的酒店。</p>
    </div>
  </div>
  <div class="box"><figure><img src="<c:url value="/resources/images/" /><c:out value="hotel_intro.jpg"/>" style="width: 630px; height: 350px;"></figure></div>
</article>
<article>
  <div class="box">
    <div class="feed"><h2>便利設施</h2>
    <p style= "text-align: center;">炫耀最好的便利設施。</p>
    </div>
  </div>
  <div class="box"><figure><img src="<c:url value="/resources/images/" /><c:out value="hotel_con.jpg"/>" style="width: 630px; height: 350px;"></figure></div>
</article>
<article>
  <div class="box">
    <div class="feed"><h2>客房信息及預約</h2>
     <p style= "text-align: center;">在舒適的客房裏陪您。</p>
    </div>
  </div>
   <div class="box"><figure><img src="<c:url value="/resources/images/" /><c:out value="hotel_room.jpg"/>" style="width: 630px; height: 350px;"></figure></div>
</article>
<article>
  <div class="box">
    <div class="feed"><h2>派對</h2>
     <p style= "text-align: center;">你是主人公。</p>
    </div>
  </div>
   <div class="box"><figure><img src="<c:url value="/resources/images/" /><c:out value="hotel_party.jpg"/>" style="width: 630px; height: 350px;"></figure></div>
</article>
</section>
<footer id="footer">
  <h2>謝謝。</h2>
  <p>感謝使用我們酒店的顧客。</p>
  <div class="container">
<div class="footer-02">Copyright © 2019 Asia Information System Co., Ltd. All Rights Reserved.</div>
  </div>
</footer>
</body>
</html>