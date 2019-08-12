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
    <p>○○ホテル</p>
    <p>いらっしゃいませ!</p>
  </figcaption>
  <a href="#"></a>
</figure>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script  src="./resources/js/hotel_main.js"></script>
<section>
  <article>
  <div class="box">
    <div class="feed"><h2>ホテル紹介</h2>
    <p style= "text-align: center;">国内一番のホテルです。</p>
    </div>
  </div>
  <div class="box"><figure><img src="<c:url value="/resources/images/" /><c:out value="hotel_intro.jpg"/>" style="width: 630px; height: 350px;"></figure></div>
</article>
<article>
  <div class="box">
    <div class="feed"><h2>便益施設</h2>
    <p style= "text-align: center;">一番の便宜施設を誇ります。</p>
    </div>
  </div>
  <div class="box"><figure><img src="<c:url value="/resources/images/" /><c:out value="hotel_con.jpg"/>" style="width: 630px; height: 350px;"></figure></div>
</article>
<article>
  <div class="box">
    <div class="feed"><h2>客室情報及び予約</h2>
     <p style= "text-align: center;">安楽な客室で仕えます。</p>
    </div>
  </div>
   <div class="box"><figure><img src="<c:url value="/resources/images/" /><c:out value="hotel_room.jpg"/>" style="width: 630px; height: 350px;"></figure></div>
</article>
<article>
  <div class="box">
    <div class="feed"><h2>パーティ</h2>
     <p style= "text-align: center;">ご客様が主人公です。</p>
    </div>
  </div>
   <div class="box"><figure><img src="<c:url value="/resources/images/" /><c:out value="hotel_party.jpg"/>" style="width: 630px; height: 350px;"></figure></div>
</article>
</section>
<footer id="footer">
  <h2>ありがとうございます。</h2>
  <p>ご利用いただきありがとうございます。</p>
  <div class="container">
<div class="footer-02">Copyright © 2019 Asia Information System Co., Ltd. All Rights Reserved.</div>
  </div>
</footer>
</body>
</html>