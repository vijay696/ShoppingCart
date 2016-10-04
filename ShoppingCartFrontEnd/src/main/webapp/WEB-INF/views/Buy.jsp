<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
	<title>Estore-Vijay G R</title>
	<meta name="description" content="E-games store | vijay.gr11@gmail.com">
	<meta name="author" content="www.google.com">
	
    <!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS
  ================================================== -->
  
 
  
  	<link  href="<c:url value="/resources/css/zerogrid.css"/>" rel="stylesheet">
	<link  href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
	<link  href="<c:url value="/resources/css/responsiveslides.css"/>" rel="stylesheet">




	
	<script src="<c:url value="/resources/js/jquery-latest.min.js"/>"></script>
	<script src="<c:url value="/resources/js/script.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery183.min.js"/>"></script>
    <script src="<c:url value="/resources/js/responsiveslides.min.js"/>"></script>
    <script>
		// You can also use "$(window).load(function() {"
		$(function () {
		  // Slideshow 
		  $("#slider").responsiveSlides({
			auto: true,
			pager: false,
			nav: true,
			speed: 500,
			namespace: "callbacks",
			before: function () {
			  $('.events').append("<li>before event fired.</li>");
			},
			after: function () {
			  $('.events').append("<li>after event fired.</li>");
			}
		  });
		});
	</script>
	
	
	<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
		<script src="js/html5.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
	<![endif]-->
<title>Add Cart</title>
<style type="text/css">


.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}
#bg {
  position: fixed; 
  top: -50%; 
  left: -50%; 
  width: 200%; 
  height: 200%;
}
#bg img {
  position: absolute; 
  top: 0; 
  left: 0; 
  right: 0; 
  bottom: 0; 
  margin: auto; 
  min-width: 50%;
  min-height: 50%;
}
</style>
    
</head>
<body>
<div class="wrap-body">

<!--////////////////////////////////////Header-->
<header class="bg-theme">
	<div class="wrap-header zerogrid">
		<div class="row">
			<div id="cssmenu">
				<ul>
		<!-- 		   <li class='active'><a href="Index">Home</a></li>
<li><a href="about">About</a></li>
				   <li><a href="contact">Contact</a></li>
		 -->		 <!--   <li><a href="login1">login</a></li>
				   <li><a href="register">register</a></li>
				  -->  
				</ul>
			</div>
			<%-- <a href="Index" class="logo">
			
			<img alt="" src="<c:url value="/resources/images/sonic.jpg" />"></img>
			
			
			</a>
		 --%></div>
	</div>
</header>

<%-- <%-- <%@include file="Header.jsp" %> 
 
 <body background = "C:\Users\veena1\Desktop\proj\accessories.jpg">
 --%> 
 <!-- <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="INDEX">CHAITANYA JEWELLERS</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href=INDEX">Home</a></li>
       
  
   <li><a href="Buy"><i class="glyphicon glyphicon-lock" class="tele"> </i>Buy</a></li>
      

     </ul> 
    </div>
  </div>
</nav>
 --> 
 
 
	<br>
	<h3>Your purchase order</h3>
	
	<form action="" id="id">
		<table class="tg">
			<tr>
				
				<th width="120">Product Name</th>
				<th width="120">Price</th>
				<th width="60">Quantity</th>
				
				
			</tr>
			
			
		
		<tr>		<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.price}</td>
			</tr>
		</table>
		  <h4><strong>Grand Total(in Rs.) </strong></h4>
                                    
                                    
       <h4><strong>${sum}</strong></h4>
		</form>
		
		
	<br>
	<br>
	<a class="button bt1" href="<c:url value="/Shipping"/>"> PAY NOW AND ENTER SHIPPING DETAILS.
	</a>
	<br>
	<br>
<ul>
	<a class="btn btn-xl" href="<c:url value="/Thankyou"/>"> CREDIT CARD</a><br><br>
	<a class="btn btn-xl" href="<c:url value="/Thankyou"/>">DEBIT CARD</a> <br><br>
	<a class="btn btn-xl" href="<c:url value="/Thankyou"/>"> CASH ON DELIVERY</a><br>
	
	<br>
	
	
	<a class="button bt1" href="<c:url value="/Tk"/>"> CANCEL TRANSACTION</a>
	</ul>
	<br>
	<br>
	</h3>
	<div>
<!-- <a href="/Logout"><li> LOG OUT</li></a> -->
<a class="btn btn-xl" href="<c:url value="/j_spring_security_logout" />">Sign Out</a>
 
 
 </div>
 
	<!-- <div class="footer transparent footer-inverse">
<footer class="container-fluid text-center">
  <p style="color: #c19a6b">Online Store Copyright:<h3>CHAITANYA JEWELLERS</h3></p>  
  
  

<p id="demo"></p>
</footer>
<div class="row"><div class="container-fluid"> <br></div></div>
<div class="row"><div class="container-fluid"> <br></div></div>
 -->
 
 <footer>
	<div class="zerogrid">
		<div class="wrap-footer">
			<div class="row">
				<h3>Contact</h3>
	<span>Phone / +91 8892754990</span></br>
				<span>Email / vijay.gr11@gmail.com  </span></br>
				<!-- <span>Studio / Moonshine St. 14/05 Light City </span></br>
				<span><strong>Copyright 20xx - <a href="http://www.zerotheme.com" rel="nofollow" target="_blank">Html5 Templates</a> Designed by <a href="http://www.zerotheme.com" rel="nofollow" target="_blank">ZEROTHEME</a></strong></span>
			</di -->		</div>
		</div>
	</div>
</footer>

	<!-- Google Map -->
	<script>
		$('.maps').click(function () {
		$('.maps iframe').css("pointer-events", "auto");
	});

	$( ".maps" ).mouseleave(function() {
	  $('.maps iframe').css("pointer-events", "none"); 
	});
	</script>

</div>
</body></html>