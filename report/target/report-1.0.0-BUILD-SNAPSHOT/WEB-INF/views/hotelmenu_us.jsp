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
    <p>○○Hotel</p>
    <p>Welcome!</p>
  </figcaption>
  <a href="#"></a>
</figure>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script  src="./resources/js/hotel_main.js"></script>
<section>
  <article>
  <div class="box">
    <div class="feed"><h2>Introduce To Hotel</h2>
    <p style= "text-align: center;">Our Hotel Is The Best Hotel.</p>
    </div>
  </div>
  <div class="box"><figure><img src="<c:url value="/resources/images/" /><c:out value="hotel_intro.jpg"/>" style="width: 630px; height: 350px;"></figure></div>
</article>
<article>
  <div class="box">
    <div class="feed"><h2>Amenities</h2>
    <p style= "text-align: center;">The Best Amenities</p>
    </div>
  </div>
  <div class="box"><figure><img src="<c:url value="/resources/images/" /><c:out value="hotel_con.jpg"/>" style="width: 630px; height: 350px;"></figure></div>
</article>
<article>
  <div class="box">
    <div class="feed"><h2>Room Information And Reservation</h2>
     <p style= "text-align: center;">We'll Take You To A Comfortable Room.</p>
    </div>
  </div>
   <div class="box"><figure><img src="<c:url value="/resources/images/" /><c:out value="hotel_room.jpg"/>" style="width: 630px; height: 350px;"></figure></div>
</article>
<article>
  <div class="box">
    <div class="feed"><h2>Party</h2>
     <p style= "text-align: center;">You're The Main.</p>
    </div>
  </div>
   <div class="box"><figure><img src="<c:url value="/resources/images/" /><c:out value="hotel_party.jpg"/>" style="width: 630px; height: 350px;"></figure></div>
</article>
</section>
<footer id="footer">
  <h2>Thank You So Much</h2>
  <p>Thank You For Coming Our Hotel</p>
  <div class="container">
<div class="footer-02">Copyright © 2019 Asia Information System Co., Ltd. All Rights Reserved.</div>
  </div>
</footer>
</body>
</html>