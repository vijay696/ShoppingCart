<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title reg </title>
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
			<a href='index.html' class="logo"><img src="images/logo.png" /></a>
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
										<form name="form1" id="ff" method="post" action="contact.php">
											<label class="row">
												<div class="col-1-2">
													<div class="wrap-col">
														<input type="text" name="name" id="name" placeholder="Enter name" required="required" />
													</div>
												</div>
												<div class="col-1-2">
													<div class="wrap-col">
														<input type="email" name="email" id="email" placeholder="Enter email" required="required" />
													</div>
												</div>
											</label>
											<label class="row">
												<div class="wrap-col">
													<input type="text" name="subject" id="subject" placeholder="Subject" required="required" />
												</div>
											</label>
											<label class="row">
												<div class="wrap-col">
													<textarea name="message" id="message" class="form-control" rows="4" cols="25" required="required"
													placeholder="Message"></textarea>
												</div>
											</label>
											<center><input class="sendButton" type="submit" name="Submit" value="Submit"></center>
									
									   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-1-3">
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