<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

    <!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
	<title>zBlueCar - Free Html5 Templates</title>
	<meta name="description" content="Free Responsive Html5 Css3 Templates | zerotheme.com">
	<meta name="author" content="www.zerotheme.com">
	
    <!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS
  ================================================== -->
  
  
  
  	<link  href="<c:url value="resources/css/zerogrid.css"/>" rel="stylesheet" >
	<link  href="<c:url value="resources/css/style.css"/>" rel="stylesheet">
	<link  href="<c:url value="resources/css/responsiveslides.css"/>" rel="stylesheet">
	
	

	
	<script src="<c:url value="resources/js/jquery-latest.min.js"/>"> </script>
	<script src="<c:url value="resources/js/script.js"/>"> </script>
    <script src="<c:url value="resources/js/jquery183.min.js"/>"> </script>
    <script src="<c:url value="resources/js/responsiveslides.min.js"/>"> </script>
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
    
</head>
<body>
<div class="wrap-body">

<!--////////////////////////////////////Header-->
<header class="bg-theme">
	<div class="wrap-header zerogrid">
		<div class="row">
			<div id="cssmenu">
			<h1>THUNDERSPEED</h1>
				<ul>
				   <li class='active'><a href="index.html">Home</a></li>
				   <li><a href="#">Cars</a></li>
				   <li><a href="single.html">About</a></li>
				   <li><a href="contact.html">Contact</a></li>
				   <li><a href="login.html">login</a></li>
				</ul>
			</div>
			<a href='index.html' class="logo">
			 <img alt="" src="<c:url value="/resources/images/logo.png" />"></img>​
			</a>
		</div>
	</div>
</header>
<div class="slider">
	<!-- Slideshow -->
	<div class="callbacks_container">
		<ul class="rslides" id="slider">
			<li>
			 <img alt="" src="<c:url value="/resources/images/slideshow-image1.jpg" />"></img>​
				
				<div class="caption">
					<h1>THUNDERSPEED</h1>
					<span >MAKE IT UNIQUE, MAKE IT YOURS</span>
				</div>
			</li>
			<li>
			<img alt="" src="<c:url value="/resources/images/slideshow-image2.jpg" />"></img>
				
				<div class="caption">
					<h1>THUNDERSPEED</h1>
					<span >ENJOY THE THRILL</span>
				</div>
			</li>
			<li>
			<img alt="" src="<c:url value="/resources/images/slideshow-image3.jpg" />"></img>
				
				<div class="caption">
					<h1>THUNDERSPEED</h1>
					<span >THE POWER AND THE BEAUTY</span>
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
<!--////////////////////////////////////Container-->
<section id="container">
	<div class="wrap-container clearfix">
		<div id="main-content">
			<div class="wrap-box"><!--Start Box-->
				<div class="zerogrid">
					<div class="header">
						<h2>FEATURED CARS</h2>
					</div>	
					<div class="row">
						<div class="col-1-3">
							<div class="wrap-col">
								<div class="item t-center">
									<div class="item-container">
										<a href="single.html">
											<div class="item-caption">
												<div class="item-caption-inner">
													<div class="item-caption-inner1">
														<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
													</div>
												</div>
											</div>
											 <img alt="" src="<c:url value="/resources/images/car1.jpg" />"></img>​
											
										</a>
									</div>
									<div class="item-info">
										<a href="single.html"><h3>LAMBORGHINI MIURA</h3></a>
										<p>THE ULTIMATE SPORTS CAR</p>
									</div>
								</div>
								<div class="item t-center">
									<div class="item-container">
										<a href="single.html">
											<div class="item-caption">
												<div class="item-caption-inner">
													<div class="item-caption-inner1">
														<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
													</div>
												</div>
											</div>
											<img alt="" src="<c:url value="/resources/images/car5.jpg" />"></img>
											
										</a>
									</div>
									<div class="item-info">
										<a href="single.html"><h3>LAMBORGHINI COUNTACH</h3></a>
										<p>A STUNNING DESIGN</p>
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
														<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
													</div>
												</div>
											</div>
											<img alt="" src="<c:url value="/resources/images/car2.jpg" />"></img>
											
										</a>
									</div>
									<div class="item-info">
										<a href="single.html"><h3>LAMBORGHINI DIABLO</h3></a>
										<p>THE SUPER CAR OF THE FUTURE</p>
									</div>
								</div>
								<div class="item t-center">
									<div class="item-container">
										<a href="single.html">
											<div class="item-caption">
												<div class="item-caption-inner">
													<div class="item-caption-inner1">
														<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
													</div>
												</div>
											</div>
											<img alt="" src="<c:url value="/resources/images/car4.jpg" />"></img>
											
										</a>
									</div>
									<div class="item-info">
										<a href="single.html"><h3>LAMBORGHINI GALLARDO</h3></a>
										<p>32,000 km €78,400</p>
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
														<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
													</div>
												</div>
											</div>
											<img alt="" src="<c:url value="/resources/images/car3.jpg" />"></img>
											
										</a>
									</div>
									<div class="item-info">
										<a href="single.html"><h3>LAMBORGHINI GALLARDO</h3></a>
										<p>32,000 km €78,400</p>
									</div>
								</div>
								<div class="item t-center">
									<div class="item-container">
										<a href="single.html">
											<div class="item-caption">
												<div class="item-caption-inner">
													<div class="item-caption-inner1">
														<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
													</div>
												</div>
											</div>
											<img alt="" src="<c:url value="/resources/images/car1.jpg" />"></img>
											
										</a>
									</div>
									<div class="item-info">
										<a href="single.html"><h3>LAMBORGHINI GALLARDO</h3></a>
										<p>32,000 km €78,400</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="wrap-box t-center" style="background: #fff; box-shadow: 2px 2px 5px 0px rgba(0,0,0,0.3);"><!--Start Box-->
				<div class="zerogrid">
					<div class="header">
						<h2>WELCOME TO THUNDERSPEED</h2>
					</div>
					<strong>IF IT MATTERS TO YOU, IT'S EVERYTHING TO US</strong>
					<p>It is a website designed for special edition lamborghini cars for those who loves to be unique and special in their own way</p>
				</div>
			</div>
			<div class="wrap-box" ><!--Start Box-->
				<div class="zerogrid">
					<div class="header">
						<h2>LATEST CARS</h2>
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
																<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
															</div>
														</div>
													</div>
													<img alt="" src="<c:url value="/resources/images/car7.jpg" />"></img>
													
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
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
																<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
															</div>
														</div>
													</div>
													<img alt="" src="<c:url value="/resources/images/car8.jpg" />"></img>
													
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
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
																<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
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
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
																<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
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
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="single.html">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
																<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
															</div>
														</div>
													</div>
													<img alt="" src="<c:url value="/resources/images/car7.jpg" />"></img>
													
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
										<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident. </p>
										<a href="#">Read More About Us</a>
									</div>
								</div>
								<!---- Start Widget ---->
								<div class="widget wid-post">
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
								</div>
								<!---- Start Widget ---->
								<div class="widget">
									<div class="wid-header">
										<h5>SUBSCRIBE</h5>
									</div>
									<div class="wid-content">
										<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure . </p>
										<a href="#" class="button bt1">Subscribe</a>
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
