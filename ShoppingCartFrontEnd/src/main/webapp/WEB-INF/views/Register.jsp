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
  
  
  
  	<link  href="<c:url value="resources/css/zerogrid.css"/>" rel="stylesheet">
	<link  href="<c:url value="resources/css/style.css"/>" rel="stylesheet">
    
    
    <script src="<c:url value="resources/js/jquery-latest.min.js"/>"> </script>
	<script src="<c:url value="resources/js/script.js"/>"> </script>
	
	
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
				   <li class='active'><a href="index.html">Home</a></li>
				   <li><a href="#">Cars</a></li>
				   <li><a href="single.html">About</a></li>
				   <li><a href="contact.html">Contact</a></li>
				</ul>
			</div>
			<a href="" class="logo">
			
			<img alt="" src="<c:url value="/resources/images/logo.png" />"></img>
			
			
			
			
			</a>
		</div>
	</div>
</header>





<section id="container">
	<div class="zerogrid">
		<div class="wrap-container clearfix">
			<div id="main-content">
				<div class="wrap-box"><!--Start Box-->
					
						<div class="col-2-3">
							<div class="wrap-col">
								<div class="contact">
									<div class="contact-header">
										<h5>Register Form</h5>
									</div>
									
	
									
									<div id="contact_form">
										<form:form name="form1" id="ff" method="post" action="register" commandName="usersDetail">
											<label class="row">
												<div class="row">
													<div class="wrap-col">
													<form:input type="text" name="name" id="name" path="userFullName" placeholder="Enter fullname" required="required" />
													</div>
												</div>
												<div class="row">
													<div class="wrap-col">
														<form:input type="email" name="email" id="userEmail"  path="userEmail" placeholder="Enter email" required="required" />
													</div>
												</div>
											</label>
											<label class="row">
												<div class="wrap-col">
													<form:input type="text" name="phone" id="phone" path="userPhone" placeholder="phone number" required="required" />
												</div>
											</label>
											
											
											<label class="row">
												<div class="wrap-col">
													<form:input type="text" name="name" id="name" path="username" placeholder="Enter username" required="required" />
												</div>
											</label>
											
											
											<label class="row">
												<div class="wrap-col">
													<form:input type="text" name="password" id="password" path="password" placeholder="password" required="required" />
												</div>
											</label>
											
											
									<!--  		<label class="row">
												<div class="wrap-col">
													<textarea name="address" id="address" class="form-control" rows="4" cols="15" required="required"
													placeholder="Adrress"></textarea>
												</div>
											</label> -->
											<center><input class="sendButton" type="submit" name="Submit" value="Submit">
											</center>
									
									   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
										</form:form>
									</div>
								</div>
							</div>
						</div>
						<!-- <div class="col-1-3">
							<div class="wrap-col">
								<div class="contact-header">
									<h5>Contact Info</h5>
								</div>
								<div style="background: #fff; padding: 20px; box-shadow: 2px 2px 5px 0px rgba(0,0,0,0.3);">
									<span>SED UT PERSPICIATIS UNDE OMNIS ISTE NATUS ERROR SIT VOLUPTATEM ACCUSANTIUM DOLOREMQUE.</span>
									<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque la udantium, totam rem aperiam, eaque ipsa quae ab illo inventore quasi. Nemo enim ipsam voluptatem quia.</p>
									<p>JL.Kemacetan timur no.23. block.Q3<br>
										Jakarta-Indonesia</p>
									   <p>+6221 888 888 90 <br>
										+6221 888 88891</p>
									<p>info@yourdomain.com</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
 -->
 </section>

<!--////////////////////////////////////Footer-->
<footer>
	<div class="zerogrid">
		<div class="wrap-footer">
			<div class="row">
				<h3>Contact</h3>
				<span>Phone / +80 999 99 9999 </span></br>
				<span>Email / info@domain.com  </span></br>
				<span>Studio / Moonshine St. 14/05 Light City </span></br>
				<span><strong>Copyright 20xx - <a href="http://www.zerotheme.com" rel="nofollow" target="_blank">Html5 Templates</a> Designed by <a href="http://www.zerotheme.com" rel="nofollow" target="_blank">ZEROTHEME</a></strong></span>
			</div>
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