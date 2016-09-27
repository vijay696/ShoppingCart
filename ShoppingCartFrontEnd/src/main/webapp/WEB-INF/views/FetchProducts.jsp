<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
								<a
									href="<spring:url value="/product/get/${product.id}" />">
									<img alt=""
									src="<c:url value="/resources/images/${product.id}.png" /> ">
								<!-- 	<div class="caption"> -->
										${product.getName()}
										Price: ${product.getPrice()}
										<br>
										<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
										<a class="acount-btn" href="Buy/${product.getName()}">Buy</a>
										<br>
								
								<a  class="acount-btn" href="<c:url value='myCart' />">Open Cart
							</a>
							<br>
							
				
										
							<a  class="acount-btn" href="<c:url value='addToCart/${product.id}' />">Add to Cart
							</a>
							</c:if>
									
						<br>
						
						
			
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