<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
	<title>zBlueCar - Free Html5 Templates</title>
	<meta name="description" content="Free Responsive Html5 Css3 Templates | zerotheme.com">
	<meta name="author" content="www.zerotheme.com">
	
    <!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS
  ================================================== -->
  
  
  
  	<link  href="<c:url value="/resources/css/zerogrid.css"/>" rel="stylesheet">
	<link  href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
    
    
    <script src="<c:url value="/resources/js/jquery-latest.min.js"/>"> </script>
	<script src="<c:url value="/resources/js/script.js"/>"> </script>
	
	
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
    
</head>
<body>
<div class="wrap-body">

<!--////////////////////////////////////Header-->
<header class="bg-theme">
	<div class="wrap-header zerogrid">
		<div class="row">
			<div id="cssmenu">
				<ul>
				   
				   <li><a href="manageProduct">Manage Product</a></li>
				   <li><a href="manageCategory">Manage Category</a></li>
				   <li><a href="manageSupplier">Manage Supplier</a></li>
				</ul>
			</div>
			<a href="Index" class="logo">
			
			<img alt="" src="<c:url value="/resources/images/sonic.jpg" />"></img>
			
			
			
			
			</a>
		</div>
	</div>
</header>





















<!-- footer -->
<!-- <footer>
	<div class="zerogrid">
		<div class="wrap-footer">
			<div class="row">
				<h3>Contact</h3>
				<span>Phone / +91 8892754990</span></br>
				<span>Email / vijay.gr11@gmail.com  </span></br>
				<span>Studio / Moonshine St. 14/05 Light City </span></br>
				<span><strong>Copyright 20xx - <a href="http://www.zerotheme.com" rel="nofollow" target="_blank">Html5 Templates</a> Designed by <a href="http://www.zerotheme.com" rel="nofollow" target="_blank">ZEROTHEME</a></strong></span>
			</di
		</div>
	</div>
</footer>

	Google Map
	<script>
		$('.maps').click(function () {
		$('.maps iframe').css("pointer-events", "auto");
	});

	$( ".maps" ).mouseleave(function() {
	  $('.maps iframe').css("pointer-events", "none"); 
	});
	</script>

</div>
 --></body></html>
