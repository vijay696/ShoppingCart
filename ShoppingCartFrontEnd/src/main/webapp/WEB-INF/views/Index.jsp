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
	
	
	 
	
	
	<script src="<c:url value="/resources/js/jquery-latest.min.js"/>"> </script>
	<script src="<c:url value="/resources/js/script.js"/>"> </script>
    <script src="<c:url value="/resources/js/jquery183.min.js"/>"> </script>
    <script src="<c:url value="/resources/js/responsiveslides.min.js"/>"> </script>
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
    
    
    <!-- /start menu -->

<!--    <meta http-equiv="refresh" content="0; URL=./onLoad" /> --> 
<%--  <spring url value="/resources/menu.css" var="menuCSS" /> 
 <link href="${menuCSS}" rel="stylesheet" /> 
 --%>  

<style>

#head{
color:blue
}
/* Main */
#menu {
	width: 100%;
	margin: 0;
	padding: 10px 0 0 0;
	list-style: none;
	background-color: #111;
	background-image: linear-gradient(#444, #111);
	border-radius: 50px;
	box-shadow: 0 2px 1px #9c9c9c;
}

#menu li {
	float: left;
	padding: 0 0 10px 0;
	position: relative;
}

#menu a {
	float: left;
	height: 25px;
	padding: 0 25px;
	color: #999;
	text-transform: uppercase;
	font: bold 12px/25px Arial, Helvetica;
	text-decoration: none;
	text-shadow: 0 1px 0 #000;
}

#menu li:hover>a {
	color: #fafafa;
}

* html #menu li a:hover { /* IE6 */
	color: #fafafa;
}

#menu li:hover>ul {
	display: block;
}

/* Sub-menu */
#menu ul {
	list-style: none;
	margin: 0;
	padding: 0;
	display: none;
	position: absolute;
	top: 35px;
	left: 0;
	z-index: 99999;
	background-color: #444;
	background-image: linear-gradient(#444, #111);
	-moz-border-radius: 5px;
	border-radius: 5px;
}

#menu ul li {
	float: none;
	margin: 0;
	padding: 0;
	display: block;
	box-shadow: 0 1px 0 #111111, 0 2px 0 #777777;
}

#menu ul li:last-child {
	box-shadow: none;
}

#menu ul a {
	padding: 10px;
	height: auto;
	line-height: 1;
	display: block;
	white-space: nowrap;
	float: none;
	text-transform: none;
}

* html #menu ul a { /* IE6 */
	height: 10px;
	width: 150px;
}

*:first-child+html #menu ul a { /* IE7 */
	height: 10px;
	width: 150px;
}

#menu ul a:hover {
	background-color: #0186ba;
	background-image: linear-gradient(#04acec, #0186ba);
}

#menu ul li:first-child a {
	border-radius: 5px 5px 0 0;
}

#menu ul li:first-child a:after {
	content: '';
	position: absolute;
	left: 30px;
	top: -8px;
	width: 0;
	height: 0;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
	border-bottom: 8px solid #444;
}

#menu ul li:first-child a:hover:after {
	border-bottom-color: #04acec;
}

#menu ul li:last-child a {
	border-radius: 0 0 5px 5px;
}

/* Clear floated elements */
#menu:after {
	visibility: hidden;
	display: block;
	font-size: 0;
	content: " ";
	clear: both;
	height: 0;
}

* html #menu {
	zoom: 1;
} /* IE6 */
*:first-child+html #menu {
	zoom: 1;
} /* IE7 */
</style>

    
    
    
</head>
<body>
<div class="wrap-body">

<!--////////////////////////////////////Header-->
<header class="bg-theme">
	<div class="wrap-header zerogrid">
		<div class="row">
			<div id="cssmenu">
		<!-- 	<h1>eE-Games Store</h1> -->
			
  <c:if test="${pageContext.request.userPrincipal.name != null}">
<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
<a href="<c:url value="/" />">Cart</a>
</c:if>
<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
<a href="<c:url value="/admin" />">View Inventory</a>
<a href="<c:url value="/" />">View Customer</a>
</c:if>
<a>Hello, ${pageContext.request.userPrincipal.name}</a>
<a href="<c:url value="/j_spring_security_logout" />">Sign Out</a>
</c:if>		
<!-- admin function ends here -->






<!-- home bars -->
		<ul>
				  <!--  <li class='active'><a href="">Home</a></li>
				   <li><a href="GameStore">Games</a></li> -->
				   <li><a href="about">About</a></li>
				   <li><a href="contact">Contact</a></li>
				   <li><a href="login1">login</a></li>
				   <li><a href="register">register</a></li>
				</ul>
			</div>
			
			
			
			<a href="" class="logo">
			
	<h2><a href="Index"><span>E-</span>Games<span>S</span>tore</a></h2>		
			<%-- <img alt="" src="<c:url value="/resources/images/sonic.jpg" />"></img> --%>
			
			
			
			</a>
		</div>
	</div>
</header>

<!-- menu bar -->
<div>			<ul id="menu">
		<c:forEach items="${categoryList}" var="category">
			<li><a href=${category.name}>${category.name}</a>
				<ul>
					<c:forEach items="${category.products}" var="product">

						<li><a href="<c:url value='product/get/${product.id}' />">${product.name}</a></li>

					</c:forEach>

				</ul></li>
		</c:forEach>

	</ul>
	<hr color="#2D88CF" size="5">
	
	<div>
		<c:if test="${!empty selectedProduct.name}">
			<table>
				<tr>
					<th align="left" width="100">Product ID</th>
					<th align="left" width="150">Product Name</th>
					<th align="left" width="230">Product Description</th>
					<th align="left" width="80">Price</th>
					<th align="left" width="200">Product Category</th>
					<th align="left" width="200">Product Supplier</th>
					
				</tr>
				<tr>
					<td align="left" >${selectedProduct.id}</td>
					<td align="left" >${selectedProduct.name}</td>
					<td align="left" >${selectedProduct.description}</td>
					<td align="left" >${selectedProduct.price}</td>
					<td align="left" >${selectedProduct.category.name}</td>
					<td align="left" >${selectedProduct.supplier.name}</td>
				</tr>
			</table>
		</c:if>
	</div>
	
						
	</div>		
	
	
	
	<div class="slider">
	<!-- Slideshow -->
	<div class="callbacks_container">
		<ul class="rslides" id="slider">
			<li>
			<img alt="" src="<c:url value="/resources/images/slideshow-image1.jpg" />"></img>
			
				
				<div class="caption">
					<h1>E Games Store</h1>
					<span >DISCOVER THE ADVENTURES WITHIN YOU</span>
				</div>
			</li>
			<li>
			<img alt="" src="<c:url value="/resources/images/slideshow-image2.jpg" />"></img>
				
				<div class="caption">
					<h1>E Games Store</h1>
					<span >ENJOY THE THRILL</span>
				</div>
			</li>
			<li>
			<img alt="" src="<c:url value="/resources/images/slideshow-image3.jpg" />"></img>
				
				<div class="caption">
					<h1>E Games Store</h1>
					<span >EXCEED THE LIMITS</span>
				</div>
			</li>
		</ul>
	</div>
	<div class="clear"></div>
</div>

<!-- <div class="bg-theme">
	<div class="filter zerogrid">
		<h2 class="t-center">FIND CAR THAT YOU LOVE</h2>
		<div class="row">
			<div class="col-1-4">
				<div class="wrap-col">
					<span>Make :</span><br/>
					<select>
						<option>--ALL--</option>
						<option>Honda</option>
						<option>Infiniti</option>
						<option>Jeep</option>
						<option>Mercedes-Benz</option>
						<option>Volvo</option>
					</select>
				</div>
			</div>
			<div class="col-1-4">
				<div class="wrap-col">
					<span>Modal :</span><br/>
					<select>
						<option>--ALL--</option>
						<option>Aston martin</option>
						<option>Audi</option>
						<option>Bentley</option>
						<option>Bmw</option>
						<option>Cadillac</option>
						<option>Chevrolet</option>
						<option>Citroen</option>
						<option>Dacia</option>
						<option>Dodge</option>
						<option>Ferrari</option>
						<option>Ford</option>
						<option>Gmc</option>
						<option>Hyundai</option>
						<option>Jaguar</option>
						<option>Lexus</option>
					</select>
				</div>
			</div>
			<div class="col-1-4">
				<div class="wrap-col">
					<span>Price :</span><br/>
					<select>
						<option>--ALL--</option>
						<option>0-1000</option>
						<option>1000-5000</option>
						<option>5000-10000</option>
					</select>
				</div>
			</div>
 -->		<!-- 	<div class="col-1-4">
				<div class="wrap-col">
					<br>
					<a href="#" class="button bt1">Search</a>
				</div>
			</div>
		</div>
	</div>
</div>
 -->
 
 <!-- For fetching the products -->
 <%@include file="/WEB-INF/views/FetchProducts.jsp"%>
 
 
 
 
<!--////////////////////////////////////Container-->
<section id="container">
	<div class="wrap-container clearfix">
		<div id="main-content">
			<div class="wrap-box"><!--Start Box-->
				<div class="zerogrid">
					<div class="header">
						<h2>VIDEO GAMES STORE</h2>
					</div>	
					<div class="row">
						<div class="col-1-3">
							<div class="wrap-col">
								<div class="item t-center">
									<div class="item-container">
										<a href="Pcgaming">
											<div class="item-caption">
												<div class="item-caption-inner">
													<div class="item-caption-inner1">
														<!-- <span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span> -->
													</div>
												</div>
											</div>
											<img alt="" src="<c:url value="/resources/images/mafia.jpg" />"></img>
												</a>
									</div>
									<div class="item-info">
										<a href="Pcgaming"><h3>PC GAMING STORE</h3></a>
										
									</div>
								</div>
								<div class="item t-center">
									<div class="item-container">
										<a href="single.html">
											<div class="item-caption">
												<div class="item-caption-inner">
													<div class="item-caption-inner1">
														<!-- <span></span> -->
													</div>
												</div>
											</div>
											<img alt="" src="<c:url value="/resources/images/play4.jpg" />"></img>
											
										</a>
									</div>
									<div class="item-info">
										<a href="single.html"><h3>PLAYSTATION 4 STORE</h3></a>
										
									</div>
								</div>
							</div>
						</div>
						<div class="col-1-3">
							<div class="wrap-col">
								<div class="item t-center">
									<div class="item-container">
										<a href="single.html">
											<div class="item-caption">
												<div class="item-caption-inner">
													<div class="item-caption-inner1">
														<!-- <span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span> -->
													</div>
												</div>
											</div>
											<img alt="" src="<c:url value="/resources/images/xbox12.jpg" />"></img>
											
										</a>
									</div>
									<div class="item-info">
										<a href="single.html"><h3>XBOX ONE STORE</h3></a>
								
									</div>
								</div>
								<div class="item t-center">
									<div class="item-container">
										<a href="single.html">
											<div class="item-caption">
												<div class="item-caption-inner">
													<div class="item-caption-inner1">
														<!-- <span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span> -->
													</div>
												</div>
											</div>
											<img alt="" src="<c:url value="/resources/images/xbox360.jpg" />"></img>
											
										</a>
									</div>
									<div class="item-info">
										<a href="single.html"><h3>XBOX 360 STORE</h3></a>
									
									</div>
								</div>
							</div>
						</div>
						<div class="col-1-3">
							<div class="wrap-col">
								<div class="item t-center">
									<div class="item-container">
										<a href="single.html">
											<div class="item-caption">
												<div class="item-caption-inner">
													<div class="item-caption-inner1">
														<!-- <span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span> -->
													</div>
												</div>
											</div>
											<img alt="" src="<c:url value="/resources/images/play3.jpg" />"></img>
											
										</a>
									</div>
									<div class="item-info">
										<a href="single.html"><h3>PLAYSTATION 3 STORE</h3></a>
										
									</div>
								</div>
								<div class="item t-center">
									<div class="item-container">
										<a href="single.html">
											<div class="item-caption">
												<div class="item-caption-inner">
													<div class="item-caption-inner1">
														<!-- <span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span> -->
													</div>
												</div>
											</div>
											<img alt="" src="<c:url value="/resources/images/psp.jpg" />"></img>
										</a>
									</div>
									<div class="item-info">
										<a href="single.html"><h3>PSP</h3></a>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="wrap-box t-center" style="background: #fff; box-shadow: 2px 2px 5px 0px rgba(0,0,0,0.3);">
			<!--Start Box-->
				<div class="zerogrid">
					<div class="header">
						<h2>WELCOME TO THUNDERSPEED</h2>
					</div>
					<strong>IF IT MATTERS TO YOU, IT'S EVERYTHING TO US</strong>
					<p>It is a Website designed for special edition games for those who love to play and crazy about games.</p>
				</div>
			</div>
			<div class="wrap-box" ><!--Start Box-->
				<div class="zerogrid">
					<div class="header">
						<h2>NEW RELEASES  </h2>
					</div>
					<div class="row">
						<div class="col-2-3">
							<div class="wrap-col">
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
															<!-- 	<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span> -->
															</div>
														</div>
													</div>
													<img alt="" src="<c:url value="/resources/images/darksouls.jpg" />"></img>
													
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="single.html"><h3>DARK SOULS 3</h3></a>
													<p>Rs.2698.00</p>
													<p>Dark Souls III As fires fade and the world falls into ruin. </p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
													<!-- 			<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span> -->
															</div>
														</div>
													</div>
													<img alt="" src="<c:url value="/resources/images/rocket.jpg" />"></img>
													
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="single.html"><h3>Rocket League: Collector Edition</h3></a>
													<p>Rs.1999</p>
													<p>Take control of your own high-flying, hard-hitting, rocket-powered Battle-Car in the critically-acclaimed, futuristic Sports-Action hit</p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
						<%-- 		<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
																<!-- <span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span> -->
															</div>
														</div>
													</div>
													<img alt="" src="<c:url value="/resources/images/car9.jpg" />"></img>
													
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="single.html"><h3>LAMBORGHINI GALLARDO</h3></a>
													<p>32,000 km €78,400</p>
													<p>ABS, Leather seats, Power Assisted Steering, Electric heated seats, New HU and AU, Xenon headlights</p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
						 --%>		<%-- <div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
																<!-- <span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span> -->
															</div>
														</div>
													</div>
													<img alt="" src="<c:url value="/resources/images/car10.jpg" />"></img>
											
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="single.html"><h3>LAMBORGHINI GALLARDO</h3></a>
													<p>32,000 km €78,400</p>
													<p>ABS, Leather seats, Power Assisted Steering, Electric heated seats, New HU and AU, Xenon headlights</p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
							 --%>	<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
																<!-- <span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span> -->
															</div>
														</div>
													</div>
													<img alt="" src="<c:url value="/resources/images/battle.jpg" />"></img>
													
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="single.html"><h3>BATTLEBORN</h3></a>
													<p>Rs.497</p>
													<p>Battleborn is a next-gen hero-shooter brought to you by the creators of the award-winning and best-selling Borderlands franchise.</p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
							</div>
						</div>
						<div id="sidebar" class="col-1-3">
							<div class="wrap-col">
								<!---- Start Widget ---->
								<div class="widget">
									<div class="wid-header">
										<h5>About Us</h5>
									</div>
									<div class="wid-content">
										<p>It is still "Day 1" and we continue to relentlessly focus on using our investments in technology and innovation to transform the lives of our customers and all our partners. We strive to transform the way India shops and the way India sells.</p>
										<a href="about">Read More About Us</a>
									</div>
								</div>
								<!---- Start Widget ---->
							<%-- 	<div class="widget wid-post">
									<div class="wid-header">
										<h5>Latest Posts</h5>
									</div>
									<div class="wid-content">
										<div class="post">
											<a href="#">
											
											<img alt="" src="<c:url value="/resources/images/car8.jpg" />"></img>
											
											</a>
											<div class="wrapper">
											  <h5><a href="#">Lorem ipsum dolor</a></h5>
											   <span>$25 - $26</span>
											</div>
										</div>
										<div class="post">
											<a href="#">
											
											<img alt="" src="<c:url value="/resources/images/car9.jpg" />"></img>
											
											</a>
											<div class="wrapper">
											  <h5><a href="#">Lorem ipsum dolor</a></h5>
											  <span>$25 - $26</span>
											</div>
										</div>
										<div class="post">
											<a href="#">
											
											
											<img alt="" src="<c:url value="/resources/images/car10.jpg" />"></img>
											
											
											</a>
											<div class="wrapper">
											  <h5><a href="#">Lorem ipsum dolor</a></h5>
											   <span>$25 - $26</span>
											</div>
										</div>
									</div>
								</div> --%>
								<!---- Start Widget ---->
								<div class="widget">
									<div class="wid-header">
										<h5>SUBSCRIBE</h5>
									</div>
									<div class="wid-content">
										<p>For more updates about the  click below to subscribe </p>
										<a href="#"  class="button bt1">Subscribe</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!--////////////////////////////////////Footer-->
<footer>
	<div class="zerogrid">
		<div class="wrap-footer">
			<div class="row">
				<h3>Contact</h3>
				<span>Phone / +91 8892754990 </span></br>
				<span>Email / vijay.gr11@gmail.com  </span></br>
				<!-- <span>Studio / Moonshine St. 14/05 Light City </span></br>
				<span><strong>Copyright 20xx - <a href="http://www.zerotheme.com" rel="nofollow" target="_blank">Html5 Templates</a> Designed by <a href="http://www.zerotheme.com" rel="nofollow" target="_blank">ZEROTHEME</a></strong></span>
 -->			</div>
		</div>
	</div>
</footer>

</div>
</body></html>