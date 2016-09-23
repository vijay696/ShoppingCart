<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<style type="text/css">
.btn-primary {
  color: white;
  background-color: #fed136;
  border-color: #fed136;
  font-family: "Montserrat", "Helvetica Neue", Helvetica, Arial, sans-serif;
  text-transform: uppercase;
  font-weight: 700;
}
.btn-primary:hover,
.btn-primary:focus,
.btn-primary:active,
.btn-primary.active,
.open .dropdown-toggle.btn-primary {
  color: white;
  background-color: #fec503;
  border-color: #f6bf01;
}
.btn-primary:active,
.btn-primary.active,
.open .dropdown-toggle.btn-primary {
  background-image: none;
}
.btn-primary.disabled,
.btn-primary[disabled],
fieldset[disabled] .btn-primary,
.btn-primary.disabled:hover,
.btn-primary[disabled]:hover,
fieldset[disabled] .btn-primary:hover,
.btn-primary.disabled:focus,
.btn-primary[disabled]:focus,
fieldset[disabled] .btn-primary:focus,
.btn-primary.disabled:active,
.btn-primary[disabled]:active,
fieldset[disabled] .btn-primary:active,
.btn-primary.disabled.active,
.btn-primary[disabled].active,
fieldset[disabled] .btn-primary.active {
  background-color: #fed136;
  border-color: #fed136;
}
.btn-primary .badge {
  color: #fed136;
  background-color: white;
}
.btn-xl {
  color: white;
  background-color: #2D88CF;
  border-color: #fed136;
  font-family: "Montserrat", "Helvetica Neue", Helvetica, Arial, sans-serif;
  text-transform: uppercase;
  font-weight: 700;
  border-radius: 3px;
  font-size: 15px;
  padding: 10px 10px;
}
.btn-xl:hover,
.btn-xl:focus,
.btn-xl:active,
.btn-xl.active,
.open .dropdown-toggle.btn-xl {
  color: white;
  background-color: #3c5a76;
  border-color: #f6bf01;
}
.btn-xl:active,
.btn-xl.active,
.open .dropdown-toggle.btn-xl {
  background-image: none;
}
.btn-xl.disabled,
.btn-xl[disabled],
fieldset[disabled] .btn-xl,
.btn-xl.disabled:hover,
.btn-xl[disabled]:hover,
fieldset[disabled] .btn-xl:hover,
.btn-xl.disabled:focus,
.btn-xl[disabled]:focus,
fieldset[disabled] .btn-xl:focus,
.btn-xl.disabled:active,
.btn-xl[disabled]:active,
fieldset[disabled] .btn-xl:active,
.btn-xl.disabled.active,
.btn-xl[disabled].active,
fieldset[disabled] .btn-xl.active {
  background-color: #fed136;
  border-color: #fed136;
}
.btn-xl .badge {
  color: #fed136;
  background-color: white;
}
</style>



</head>
<body>
	<div class="span7 popular_products">
		
		<br>
		<div>

			<ul class="thumbnails">
				<c:forEach items="${productList}" var="product">
					<%-- <c:if
						test="${searchCondition != null && searchCondition == product.category_id}"> --%>
						<li class="span2">
							<div class="thumbnail">
								<a href="<c:url value="/product/get/${product.id}" />">
									<img alt="" src="<c:url value="/resources/images/${product.id}.png" /> ">
								<!-- 	<div class="caption"> -->
										${product.getName()}
										Price: ${product.getPrice()}
								</a>
								<br>
								<br>
								
								
					<a class="btn btn-xl" href="<c:url value='myCart' />">Open Cart</a>
									
					<a class="btn btn-xl" href="<c:url value='addToCart/${product.id}' />">Add to Cart</a>
											
					<a class="btn btn-xl" href="buyproduct">Buy</a>
						
								</a><br>
								<br>
							</div>
							</li>
			
				<%-- 	</c:if>
		
		
		<c:if test="${searchCondition == null }">
			<li class="span2">
				<div class="thumbnail">
					<a	href="<spring:url value="/product/get/${product.id}" />">
						<img alt=""
						src="<c:url value="/resources/images/${product.id}.png" /> ">
					<!-- 	<div class="caption"> -->
							${product.getName()}
							Price: Rs. ${product.getPrice()}
						<!-- </div> -->
					</a><br>
					<br>
				</div>
			</li>
	</c:if>
	
 --%>	</c:forEach>


	</ul>


	</div>
	</div>
		





</body>
</html>